class HomeScreen < Utils

    def initialize
    @new_product = 'br.com.pztec.estoque:id/Button1'
    @edit_product = 'br.com.pztec.estoque:id/editar'
    @delete_product = 'br.com.pztec.estoque:id/deletar'
    @decrease = 'br.com.pztec.estoque:id/saida'
    end

    def add_product
    click_in_element(@new_product, 5)
    end

    def edit_product
    click_in_element(@edit_product, 5)
    end

    def delete_product
    click_in_element(@delete_product, 5)
    accept_allert()
    end

    def decrease_product
    click_in_element(@decrease, 5)
    end


end