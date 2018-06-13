require 'test_helper'

class InscripcionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inscripcione = inscripciones(:one)
  end

  test "should get index" do
    get inscripciones_url
    assert_response :success
  end

  test "should get new" do
    get new_inscripcione_url
    assert_response :success
  end

  test "should create inscripcione" do
    assert_difference('Inscripcione.count') do
      post inscripciones_url, params: { inscripcione: { curso: @inscripcione.curso, documento: @inscripcione.documento, estrato: @inscripcione.estrato, id_inscripcion: @inscripcione.id_inscripcion, valor_credito: @inscripcione.valor_credito } }
    end

    assert_redirected_to inscripcione_url(Inscripcione.last)
  end

  test "should show inscripcione" do
    get inscripcione_url(@inscripcione)
    assert_response :success
  end

  test "should get edit" do
    get edit_inscripcione_url(@inscripcione)
    assert_response :success
  end

  test "should update inscripcione" do
    patch inscripcione_url(@inscripcione), params: { inscripcione: { curso: @inscripcione.curso, documento: @inscripcione.documento, estrato: @inscripcione.estrato, id_inscripcion: @inscripcione.id_inscripcion, valor_credito: @inscripcione.valor_credito } }
    assert_redirected_to inscripcione_url(@inscripcione)
  end

  test "should destroy inscripcione" do
    assert_difference('Inscripcione.count', -1) do
      delete inscripcione_url(@inscripcione)
    end

    assert_redirected_to inscripciones_url
  end
end
