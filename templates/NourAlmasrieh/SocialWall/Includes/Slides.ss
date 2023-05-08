<div class="card shadow">
    <% if $Bild %>
        <% if $ProfileImageConf %>
            <div class="card-body py-2 px-3">
                <% if $PlatformLinkConf %>
                <a href="$PlatformLinkConf" target="_blank">
                <% end_if %>
                    <% if $ProfileImageConf %>
                        <img src="$ProfileImageConf.Fit(35,35).Link" loading="lazy" class="img-fluid profileimage d-inline-block me-3">
                    <% end_if %>
                    <% if $UsernameConf %>
                        <h6 class="mb-0 d-inline-block">$UsernameConf</h6>
                    <% else %>
                        <% if $Username %>
                            <h6 class="mb-0 d-inline-block">$Username</h6>
                            <% end_if %>
                    <% end_if %>
                <% if $PlatformLinkConf %>
                </a>
                <% end_if %>
            </div>
        <% end_if %>
        <div class="p-0 position-relative">
            <div class="card-img-top">
                <a href="$PlatformLink" target="_blank">
                    <picture>
                        <source srcset="$Bild.FocusFill(770,770).URL" media="(min-width:768px)">
                        <source srcset="$Bild.FocusFill(1280,720).URL" media="(min-width:500px)">
                        <source srcset="$Bild.FocusFill(800,600).URL" media="(min-width:1px)">
                        <img src="$Bild.FocusFill(770,770).URL" class="img-fluid w-100" alt="$Bild.AltText">
                    </picture>
                </a>
            </div>
        </div>
        <div class="rounded-social-buttons platform__icon text-center">
            <a class="social-button facebook" href="$PlatformLink" target="_blank">
                <i class="fab $PlatformIconClass"></i>
            </a>
        </div>
        
    <% end_if %>
    <div class="card-footer">
        <div class="p-3 p-md-4">
            <div class="row">
                <div class="col-12">
                    <p>
                        $Message.LimitWordCount(30, ' ...').RAW
                    </p>
                </div>
            </div>
            <div class="row align-items-center mt-3">
                <div class="col-12">
                    <span>
                        $CreatedDate
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>