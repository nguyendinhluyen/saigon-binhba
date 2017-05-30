<?php    
    
    $show = input($_GET['show']);

    //menu icon css
    
    $introduce = 'introduce';

    $product = 'product_menu';

    $service = 'service';

    $blog = 'blog';

    $share = 'share';

    $contact = 'contact';
    
    $home = 'home';
    
    //end menu icon

    $title_category = "Danh mục sản phẩm";

    include 'modules/layout.php';

    include 'modules/product_typical_left.php';

    include 'modules/news_left.php';

    include 'modules/acount.php';
    
    include 'modules/cart_right.php';
    
    if(isset($_SESSION['cart_login']))
    {
        if($show != 'cart-finish' && $show != 'process_login' && $show != 'login')
        {
            unset($_SESSION['cart_login']);
        }
    }
            
    switch($show)
    {
        case 'gmail_login':

            include('modules/gmail_login.php');

            break;

        case 'facebook_login':

            include('modules/facebook_login.php');

            break;

        case 'product':

            include('modules/product.php');

            $product = 'product_menu_active';
            
            break;

        case 'allproduct':

            include('modules/allproduct.php'); 
            
            $product = 'product_menu_active';

            break;

        case 'alltours':
            
            include('modules/alltours.php'); 
            
            $service = "service_active";

            break;
        
        case 'product_detail':

            include('modules/product_detail.php');                        
            
            $product = 'product_menu_active';

            break;
        
        case 'tours_detail':

            include('modules/tours_detail.php');                        
            
            $service = 'service_active';

            break;

        case 'cart':

            include('modules/cart.php');
            
            include 'modules/cart_right.php';

            break;

        case 'info':

            include('modules/category_libary.php');

            include('modules/info.php');
                        
            $blog = "blog_active";
            
            break;

        case 'info_detail':

            include ('modules/category_libary.php');

            include('modules/info_detail.php');

            break;

        case 'info_detail_libary':

            include ('modules/category_libary.php');

            include('modules/info_detail_libary.php');
            
            $blog = "blog_active";

            break;

        case 'search':

            include('modules/search.php');
            
            break;
        
        case 'search_all_product':
            
            include('modules/search_all_product.php');
            
            break;

        case 'cart-finish':

            include('modules/cart_finish.php');

            break;

        case 'register':

            include('modules/register.php');

            break;

        case 'process-register':

            include('modules/process_register.php');

            break;

        case 'login':

            include('modules/login.php');

            break;

        case 'process_login':

            include('modules/process_login.php');

            break;

        case 'user_info':

            include('modules/user_info.php');

            break;

        case 'change_pass':

            include('modules/change_pass.php');

            break;

        case 'historyOrder':

            include('modules/history_order.php');

            break;

        case 'contact':

            $contact_active = 'contact_active';

            include('modules/contact.php');
            
            $contact = "contact_active";

            break;

        case 're_pet_profile':

            include('modules/re_pet_profile.php');

            break;

        case 'list_pet_profile':

            include('modules/list_pet_profile.php');

            break;

        case 'ed_pet_profile':

            include('modules/ed_pet_profile.php');

            break;

        case 'forgot_pass':

            include('modules/forgot_pass.php');

            break;

        case 'resetUpdate':

            include('modules/resetUpdateCart.php');

            break;

        case 'user_infomation':

            include('modules/user_infomation.php');

            break;
        
        case 'adoption':

            include("modules/category_news_adoption.php");

            include("modules/news_adoption.php");

            $title_category = "Nhận nuôi pet";

            break;
        
        case 'introduce':

            include("modules/category_news_introduce.php");

            include("modules/news_introduce.php");
            
            $introduce = "introduce_active";

            break;

        case 'help':

            include("modules/category_help.php");

            include("modules/help.php");
                       
            $service = "service_active";

            break;

        default:

            include('modules/home.php');

            $home = 'home_active';

            break;
    }    
?>

