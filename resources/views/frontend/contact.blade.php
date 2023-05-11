@extends ('frontend.master')

@section ('content')
 <!--section-heading-->
 <div class="section-heading " >
        <div class="container-fluid">
             <div class="section-heading-2">
                 <div class="row">
                     <div class="col-lg-12">
                         <div class="section-heading-2-title">
                             <h1>Contact us</h1>
                             <p class="links"><a href="{{ route('index') }}">Home <i class="las la-angle-right"></i></a> contact</p>
                         </div>
                     </div>  
                 </div>
             </div>
         </div>
    </div>
    <!--contact-->
    <section class="contact">
        <div class="container-fluid">
            <div class="contact-area">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="contact-image">
                            <img src="{{ asset('frontend_assets/img/other/contact.jpg')}}" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="contact-info">
                            <h3>feel free to contact us</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate deserunt suscipit error deleniti
                                porro, pariatur voluptatem iste quos maxime aspernatur.</p>
                        </div>
                        <!--form-->
                        <form action="{{ route('contact.store') }}" class="form contact_form " method="POST" id="main_contact_form">
                            @csrf
                            <div class="alert alert-success contact_msg" style="display: none" role="alert">
                                Your message was sent successfully.
                            </div>
                            <div class="form-group">
                                <input type="text" name="cont_name" id="name" class="form-control" placeholder="Name*" required="required">
                            </div>
                    
                            <div class="form-group">
                                <input type="email" name="cont_email" id="email" class="form-control" placeholder="Email*" required="required">
                            </div>
                    
                            <div class="form-group">
                                <input type="text" name="cont_topic" id="subject" class="form-control" placeholder="Topic*" required="required">
                            </div>
                    
                            <div class="form-group">
                                <textarea name="cont_message" id="message" cols="30" rows="5" class="form-control" placeholder="Message*" required="required"></textarea>
                            </div>
                    
                            <button type="submit" name="submit" class="btn-custom">
                                                    Send Message
                                                </button>
                        </form>
                    </div>
                </div> 
            </div>
        </div>
    </section>        

@endsection