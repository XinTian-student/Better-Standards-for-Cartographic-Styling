<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>Overijssel_Polygon</Name>
    <UserStyle>
      <Title>Proportional Symbol</Title>
      <FeatureTypeStyle>
        <Rule>
          <Name>Overijssel</Name>
          <Title>Overijssel</Title>          
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#ecda9a</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#fff</CssParameter>
              <CssParameter name="stroke-width">0.5</CssParameter>
            </Stroke>            
          </PolygonSymbolizer>           
        </Rule>
      </FeatureTypeStyle>
      <FeatureTypeStyle>      
        <Rule>
          <Name>Population</Name>
          <Title>Population</Title>       
          <PointSymbolizer>
            <Geometry>
              <ogc:Function name="centroid">
                <ogc:PropertyName>the_geom</ogc:PropertyName>
              </ogc:Function>
            </Geometry>
            <Graphic>
              <Mark>
                <WellKnownName>circle</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#9ac5ed</CssParameter>
                </Fill>
              </Mark>
              <!-- <Size>
                <ogc:Function name="categorize">
                  <ogc:PropertyName>no_inhabit</ogc:PropertyName>
                  <ogc:Literal>16</ogc:Literal>
                  <ogc:Literal>44746</ogc:Literal>
                  <ogc:Literal>26.55</ogc:Literal>
                  <ogc:Literal>73216</ogc:Literal>
                  <ogc:Literal>34</ogc:Literal>
                  <ogc:Literal>101686</ogc:Literal>
                  <ogc:Literal>40</ogc:Literal>
                  <ogc:Literal>130156</ogc:Literal>
                  <ogc:Literal>50</ogc:Literal>
                </ogc:Function>
              </Size> -->
              
              <Size>
                <ogc:Function name="ProportionalSymbol">
                  <ogc:PropertyName>no_inhabit</ogc:PropertyName>
                  <ogc:Literal>70</ogc:Literal>
                  <ogc:Literal>158625</ogc:Literal>
                </ogc:Function>
              </Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Times New Roman</CssParameter>
              <CssParameter name="font-style">Normal</CssParameter>
              <CssParameter name="font-size">11</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>0.5</AnchorPointX>
                  <AnchorPointY>1.7</AnchorPointY>
                </AnchorPoint>
              </PointPlacement>
            </LabelPlacement>
          </TextSymbolizer>
        </Rule>
        <VendorOption name="composite">source-over</VendorOption>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>