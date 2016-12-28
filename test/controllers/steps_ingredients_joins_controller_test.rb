require 'test_helper'

class StepsIngredientsJoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @steps_ingredients_join = steps_ingredients_joins(:one)
  end

  test "should get index" do
    get steps_ingredients_joins_url
    assert_response :success
  end

  test "should get new" do
    get new_steps_ingredients_join_url
    assert_response :success
  end

  test "should create steps_ingredients_join" do
    assert_difference('StepsIngredientsJoin.count') do
      post steps_ingredients_joins_url, params: { steps_ingredients_join: { amount: @steps_ingredients_join.amount, ingredient_id: @steps_ingredients_join.ingredient_id, recipe_step_id: @steps_ingredients_join.recipe_step_id } }
    end

    assert_redirected_to steps_ingredients_join_url(StepsIngredientsJoin.last)
  end

  test "should show steps_ingredients_join" do
    get steps_ingredients_join_url(@steps_ingredients_join)
    assert_response :success
  end

  test "should get edit" do
    get edit_steps_ingredients_join_url(@steps_ingredients_join)
    assert_response :success
  end

  test "should update steps_ingredients_join" do
    patch steps_ingredients_join_url(@steps_ingredients_join), params: { steps_ingredients_join: { amount: @steps_ingredients_join.amount, ingredient_id: @steps_ingredients_join.ingredient_id, recipe_step_id: @steps_ingredients_join.recipe_step_id } }
    assert_redirected_to steps_ingredients_join_url(@steps_ingredients_join)
  end

  test "should destroy steps_ingredients_join" do
    assert_difference('StepsIngredientsJoin.count', -1) do
      delete steps_ingredients_join_url(@steps_ingredients_join)
    end

    assert_redirected_to steps_ingredients_joins_url
  end
end
