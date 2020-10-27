<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  <NamedLayer>
    <Name>Overijssel_population density</Name>
    <UserStyle>
      <Title>Population Density of Overijssel, per Municipalty</Title>
      <FeatureTypeStyle>
        <Rule>
          <Title>Population Density</Title>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">
                <ogc:Function name="Classify">
                  <ogc:PropertyName>population</ogc:PropertyName>
                  <!-- The number of classes must equal to the number of colours -->
                  <ogc:Literal>5</ogc:Literal>
                  <!-- options：natural/quantile/equal/heads-->
                  <ogc:Literal>natural</ogc:Literal>
                  <ogc:Literal>#ecda9a</ogc:Literal>
                  <ogc:Literal>#f1b973</ogc:Literal>
                  <ogc:Literal>#f7945d</ogc:Literal>
                  <ogc:Literal>#f86f56</ogc:Literal>
                  <ogc:Literal>#ee4d5a</ogc:Literal>
                </ogc:Function>
              </CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">0.5</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Times</CssParameter>
              <CssParameter name="font-size">11</CssParameter>
              <CssParameter name="font-style">normal</CssParameter>
              <CssParameter name="font-weight">normal</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>0.5</AnchorPointX>
                  <AnchorPointY>0.0</AnchorPointY>
                </AnchorPoint>
                <Displacement>
                  <DisplacementX>0</DisplacementX>
                  <DisplacementY>-6</DisplacementY>
                </Displacement>
                <!-- <Rotation>-45</Rotation> -->
              </PointPlacement>
            </LabelPlacement>            
            <Fill>
              <CssParameter name="fill">#000</CssParameter>
            </Fill>
          </TextSymbolizer>
        </Rule>

      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
