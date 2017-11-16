$('#confirm-delete').on('show.bs.modal', function(e) {
    console.log('tst');
    $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
});