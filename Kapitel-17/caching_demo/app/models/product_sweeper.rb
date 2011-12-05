class ProductSweeper < ActionController::Caching::Sweeper
  observe Product
  def after_save(product)
    expire_products(product)
  end
  
  def after_destroy(product)
    expire_products(product)
  end

  private

  def expire_products(product)
    expire_fragment(controller: 'products', action: 'index')
    expire_page(controller: 'products', action: 'show', id: product.id )
  
    # expire_action(controller: 'products', action: 'show', id: product.id )
    # expire_action(controller: 'products', action: 'create')
  end 
end