<?php

namespace ContactBundle\Controller;

use UserBundle\Entity\User;
use ContactBundle\Entity\Address;
use ContactBundle\Entity\Contact;
use ContactBundle\Form\AddressType;
use ContactBundle\Form\ContactType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="contact_list")
     */
    public function indexAction()
    {
        /* @var User $user */
        $user = $this->getUser();

        $contacts = $user->getContacts();

        return $this->render('ContactBundle:Default:index.html.twig', ['contacts' => $contacts]);
    }

    /**
     * @Route("/edit/{id}", name="contact_edit", requirements={"id": "\d+"})
     * @ParamConverter("contact", class="ContactBundle:Contact")
     */
    public function editAction(Contact $contact, Request $request)
    {

        $form = $this->createForm(ContactType::class, $contact);
        $addresses = $contact->getAddresses();
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $contact = $form->getData();

            $em = $this->getDoctrine()->getManager();
            $em->persist($contact);
            $em->flush();

            return $this->redirectToRoute('contact_list');
        }
        return $this->render('ContactBundle:Default:edit.html.twig', ['form' => $form->createView(), 'addresses' => $addresses]);
    }

    /**
     * @Route("/add", name="contact_add")
     */
    public function addAction(Request $request)
    {
        $form = $this->createForm(ContactType::class);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $contact = $form->getData();

            $em = $this->getDoctrine()->getManager();
            $em->persist($contact);
            $em->flush();

            return $this->redirectToRoute('contact_list');
        }
        return $this->render('ContactBundle:Default:add.html.twig', ['form' => $form->createView()]);
    }

    /**
     * @Route("/addressEdit/{id}", name = "address_edit", requirements={"id": "\d+"})
     * @ParamConverter("address", class="ContactBundle:Address")
     */
    public function editAddressAction(Address $address, Request $request)
    {
        $form = $this->createForm(AddressType::class, $address);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $address = $form->getData();

            $em = $this->getDoctrine()->getManager();
            $em->persist($address);
            $em->flush();

            return $this->redirectToRoute('contact_edit', ['id' => $address->getContact()->getId()]);
        }
        return $this->render('ContactBundle:Default:adr.html.twig', ['form' => $form->createView()]);
    }
}