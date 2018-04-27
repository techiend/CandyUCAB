{include file="../Overall/Header.tpl"}


        {if $login}
            {if $rol == '1'}
                <div id="wrapper">
                    {include file='../Overall/Navbar_admin.tpl'}
                    <div id="page-wrapper">

                    </div>
                    <!-- /#page-wrapper -->
                </div>
            {else}
                {include file='../Overall/Navbar_classic.tpl'}
            {/if}
        {else}
            {include file='../Overall/Navbar_classic.tpl'}
        {/if}

{include file="../Overall/Footer.tpl"}