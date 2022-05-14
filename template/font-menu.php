<section class="ftco-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <span class="subheading">Our Coffees</span>
            <h2>Discover Our Exclusive Coffee Menu</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 dish-menu">

            <div class="nav nav-pills justify-content-center ftco-animate" id="v-pills-tab" role="tablist" aria-orientation="vertical">
              <a class="nav-link py-3 px-4 active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true"><span class="flaticon-cheers"></span> Our Coffees</a>

            </div>

            <div class="tab-content py-5" id="v-pills-tabContent">
              <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                <div class="row">
                  <div class="col-lg-6">
                       <?php 
                      $sql2 = "SELECT * FROM `menu_item` WHERE food_type = 'Fast Food' LIMIT 5";
                      $result2 = $con->query($sql2);
                      foreach ($result2 as $r2) {
                    ?>
                    <div class="menus d-flex ftco-animate">
					<figure class="image rounded">
					<img style="margin-right: 20px;width: 70px;height: 70px;border-radius: 50%; " src="dashboard/item-image/<?php echo $r2['image']; ?>" alt="Item Image" >
					</figure>
                     <!-- <div class="menu-img" style="background-image: url(dashboard/item-image/<?php echo $r2['image']; ?>);"></div> -->
                      <div class="text d-flex">
                        <div class="one-half">
                          <h3><?php echo $r2['item_name']; ?></h3>
                          <p><span><?php echo $r2['madeby']; ?></p>
                        </div>
                        <div class="one-forth">
                          <span class="price">Rs.<?php echo $r2['price']; ?></span><br> 
                        </div> 
                      </div>
                    </div>
                    <?php } ?>
					</div>
					 <div class="col-lg-6">
                    <?php 
                      $sql2 = "SELECT * FROM `menu_item` WHERE food_type = 'Fast Food' LIMIT 5 , 5";
                      $result2 = $con->query($sql2);
                      foreach ($result2 as $r2) {
                    ?>
                    <div class="menus d-flex ftco-animate">
                     <figure class="image rounded">
					<img style="margin-right: 20px;width: 70px;height: 70px;border-radius: 50%; " src="dashboard/item-image/<?php echo $r2['image']; ?>" alt="Item Image" >
					</figure>
                     <!-- <div class="menu-img" style="background-image: url(dashboard/item-image/<?php echo $r2['image']; ?>);"></div> -->
                      <div class="text d-flex">
                        <div class="one-half">
                          <h3><?php echo $r2['item_name']; ?></h3>
                          <p><span><?php echo $r2['madeby']; ?></p>
                        </div>
                        <div class="one-forth">
                          <span class="price">Rs.<?php echo $r2['price']; ?></span><br> 
                        </div> 
                      </div>
                    </div>
                    <?php } ?>
                  </div> 
                  </div>
                </div>
              </div> 
            </div>
          </div>
        </div>
      
    </section>