class RegistrationAssert < Utils
  include RSpec::Matchers
  def initialize
    @code_field = 'txt_codigo'
    @description_field = 'txt_descricao'
    @packing_field = 'txt_unidade'
    @amount_field = 'txt_quantidade'
    @unitValue_field = 'txt_valunit'
    @lot_field = 'txt_lote'
    @product_registered = 'tabela_itens'
    @menu = 'Button3'
    @decrease_stock = 'txt_qtdsaida'
    @reason = 'txt_motivo'
    @doc_ref = 'txt_referencia'
  end

  def check_registration
    wait_for_element(@product_registered, 5)
    expect(get_text(@code_field, 5)).to eq('123')
    expect(get_text(@description_field, 5)).to eql('Produto Teste')
    expect(get_text(@packing_field, 5)).to eql('5')
    expect(get_text(@amount_field, 5)).to eql('5')
    expect(get_text(@unitValue_field, 5)).to eql('10,00')
    expect(get_text(@lot_field, 5)).to eql('123')
  end

    def check_edition
    wait_for_element(@product_registered, 5)
    expect(get_text(@code_field, 5)).not_to eq('123')
    expect(get_text(@description_field, 5)).not_to eql('Produto Teste')
    expect(get_text(@packing_field, 5)).not_to eql('5')
    expect(get_text(@amount_field, 5)).not_to eql('5')
    expect(get_text(@unitValue_field, 5)).not_to eql('10,00')
    expect(get_text(@lot_field, 5)).not_to eql('123')
    end

    def check_deletion
    wait_for_element(@menu, 5)
    expect(element_is_present?(@product_registered)).to be_falsey
    end

    def check_decrease(new_value)
      wait_for_element(@product_registered, 5)
      expect(get_text(@amount_field, 5)).to eql new_value
    end
end