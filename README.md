CRM
===

Test technique

## Manuel

<ol>
<li>Télécharger le code source</li>
<li>
 <pre><code>composer update</code></pre>
</li>
<li>
    Créer une base de données MySQL
    <pre><code>CREATE DATABASE `crm`;</code></pre>
</li>
<li>Modifier les paramètres de la base de données dans le fichier <p>app/config/parameter.yml</p></li>
<li>Synchroniser la base de données
<pre><code>
php bin/console doctrine:schema:update --force
</pre></code>
</li>
<li>Inserer les données de test dans la base de données
<p>assets/database/crm.sql</p>
</li>
<li>Lancer le serveur: 
<pre><code>
php bin/console server:start
</code></pre>
</li>
<li>Enjoy :)</li>
</ol>