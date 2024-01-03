
    let openedFromRegistration = false;

    // Function to open the Add-State modal from myRegistration
    function openAddStateFromRegistration() {
        openedFromRegistration = true;
    $('#myRegistration').modal('hide');
    $('#Add-State').modal('show');
    }

    // Function to close the Add-State modal only if opened from myRegistration
    function closeAddStateModal() {
        if (openedFromRegistration) {
        $('#Add-State').modal('hide');
    openedFromRegistration = false;
        }
    }







//function preventCloseModal(ele) {
//    $(ele).modal('hide');
//    $('.modal-backdrop').remove()
//}

