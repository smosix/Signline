namespace :pages do 
  desc "Reprocess Images"
  task make: :environment do 

@pages = {
  "About Us" => {
    body: "signline/about.html",
    site_id: 1,
    menu: 1,
    image: "about.jpg"
    },
  "Case Histories" => {
    body: "signline/case_histories.html",
    site_id: 1,
    menu: 1
  },
  "Company Policy" => {
    body: "signline/company_policy.html",
    site_id: 1,
    menu: 1
  },
  "Materials" => {
    body: "signline/materials.html",
    site_id: 1,
    menu: 1
  },
  "Vehicle Graphics" => {
    body: "signline/vehicle_graphics.html",
    site_id: 1,
    menu: 2,
    image: "vehicle_graphics.jpg"
  },
  "Vehicle Wrapping" => {
    body: "signline/vehicle_wrapping.html",
    site_id: 1,
    menu: 2,
    image: "vehicle_wrapping.jpg"
  },
  "Digital Printing" => {
    body: "signline/digital_printing.html",
    site_id: 1,
    menu: 2,
    image: "digital_printing.jpg"
  },
  "Road & Safety Signs" => {
    body: "signline/road_safety_signs.html",
    site_id: 1,
    menu: 2,
    image: "road_safety_signs.jpg"
  },
  "Stationary Printing" => {
    body: "signline/stationary_printing.html",
    site_id: 1,
    menu: 2,
    image: "stationary_printing.jpg"
  },
  "Engraving CNC Router" => {
    body: "signline/cnc_router.html",
    site_id: 1,
    menu: 2,
    image: "cnc_router.jpg"
  },
  "Banners & Flags" => {
    body: "signline/banners_and_flags.html",
    site_id: 1,
    menu: 2,
    image: "banners_and_flags.jpg"
  },
  "Window Tint & Frost" => {
    body: "signline/window_tints.html",
    site_id: 1,
    menu: 2,
    image: "window_tints.jpg"
  },
  "Resprays & Race Reps" => {
    body: "signline/resprays_and_race_reps.html",
    site_id: 1,
    menu: 2,
    image: "resprays_and_race_reps.jpg"
  },
  "Shop & Unit Signs" => {
    body: "signline/shop_unit_signs.html",
    site_id: 1,
    menu: 2,
    image: "shop_unit_signs.jpg"
  },
  "Panel Signs" => {
    body: "signline/panel_signs.html",
    site_id: 1,
    menu: 2,
    image: "panel_signs.jpg"
  },
  "Screen Printing" => {
    body: "signline/screen_printing.html",
    site_id: 1,
    menu: 2,
    image: "screen_printing.jpg"
  }, 
  "Corporate Workwear" => {
    body: "signline/corporate_workwear.html",
    site_id: 1,
    menu: 2,
    image: "corporate_workwear.jpg"
  },
  "Vehicle Registration Plates" => {
    body: "signline/number_plates.html",
    site_id: 1,
    menu: 2,
    image: "number_plates.jpg"
  },
  "Promotional Products" => {
    body: "signline/promotional_products.html",
    site_id: 1,
    menu: 2,
    image: "promotional_products.jpg"
  },
  "Tradeshop" => {
    body: "signline/tradeshop.html",
    site_id: 1,
    menu: 2,
    image: "tradeshop.jpg"
  }
}

  @pages.each do |k, v|
    Rails.logger.debug v
    if v[:image]
      @page = Page.create(name: k, body: File.open(File.join(Rails.root, "seed_html/#{v[:body]}")).read, site_id: v[:site_id], published: true, image: File.open(File.join(Rails.root, "seed_images/page_images/#{v[:image]}")))
    else
      @page = Page.create(name: k, body: File.open(File.join(Rails.root, "seed_html/#{v[:body]}")).read, site_id: v[:site_id], published: true)
    end
    MenuItem.create(name: @page.name, menu_type: v[:menu], site_id: @page.site_id, page_id: @page.id)
  end

  end
end


