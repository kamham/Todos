require 'test_helper'

class FreightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @freight = freights(:one)
  end

  test "should get index" do
    get freights_url
    assert_response :success
  end

  test "should get new" do
    get new_freight_url
    assert_response :success
  end

  test "should create freight" do
    assert_difference('Freight.count') do
      post freights_url, params: { freight: { code: @freight.code, country: @freight.country, latitude: @freight.latitude, longitude: @freight.longitude, y2005: @freight.y2005, y2006: @freight.y2006, y2007: @freight.y2007, y2008: @freight.y2008, y2009: @freight.y2009, y2010: @freight.y2010, y2011: @freight.y2011, y2012: @freight.y2012, y2013: @freight.y2013, y2014: @freight.y2014, y2015: @freight.y2015, y2016: @freight.y2016, y2017: @freight.y2017, y2018: @freight.y2018, y2019: @freight.y2019 } }
    end

    assert_redirected_to freight_url(Freight.last)
  end

  test "should show freight" do
    get freight_url(@freight)
    assert_response :success
  end

  test "should get edit" do
    get edit_freight_url(@freight)
    assert_response :success
  end

  test "should update freight" do
    patch freight_url(@freight), params: { freight: { code: @freight.code, country: @freight.country, latitude: @freight.latitude, longitude: @freight.longitude, y2005: @freight.y2005, y2006: @freight.y2006, y2007: @freight.y2007, y2008: @freight.y2008, y2009: @freight.y2009, y2010: @freight.y2010, y2011: @freight.y2011, y2012: @freight.y2012, y2013: @freight.y2013, y2014: @freight.y2014, y2015: @freight.y2015, y2016: @freight.y2016, y2017: @freight.y2017, y2018: @freight.y2018, y2019: @freight.y2019 } }
    assert_redirected_to freight_url(@freight)
  end

  test "should destroy freight" do
    assert_difference('Freight.count', -1) do
      delete freight_url(@freight)
    end

    assert_redirected_to freights_url
  end
end
