<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>OpenData_PMv NOX_Fpl2014_Grid2500 Kopie</se:Name>
    <UserStyle>
      <se:Name>OpenData_PMv NOX_Fpl2014_Grid2500 Kopie</se:Name>
      <se:FeatureTypeStyle>
        <se:Rule>
          <se:Name> 1000 - 11256 Nox KG/Jahr</se:Name>
          <se:Description>
            <se:Title> 1000 - 11256 Nox KG/Jahr</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>NOX_kg_a</ogc:PropertyName>
                <ogc:Literal>1000</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>NOX_kg_a</ogc:PropertyName>
                <ogc:Literal>11255.56927600000199163</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>circle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#fecc5c</se:SvgParameter>
                </se:Fill>
              </se:Mark>
              <se:Size>40</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name> 11256 - 16883 Nox KG/Jahr</se:Name>
          <se:Description>
            <se:Title> 11256 - 16883 Nox KG/Jahr</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>NOX_kg_a</ogc:PropertyName>
                <ogc:Literal>11255.56927600000199163</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>NOX_kg_a</ogc:PropertyName>
                <ogc:Literal>16883.35314400000061141</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>circle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#fd8d3c</se:SvgParameter>
                </se:Fill>
              </se:Mark>
              <se:Size>40</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name> 16883 - 22511 Nox KG/Jahr</se:Name>
          <se:Description>
            <se:Title> 16883 - 22511 Nox KG/Jahr</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>NOX_kg_a</ogc:PropertyName>
                <ogc:Literal>16883.35314400000061141</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>NOX_kg_a</ogc:PropertyName>
                <ogc:Literal>22511.13701199999923119</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>circle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#ff0000</se:SvgParameter>
                </se:Fill>
              </se:Mark>
              <se:Size>40</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name> 22511 - 28139 Nox KG/Jahr</se:Name>
          <se:Description>
            <se:Title> 22511 - 28139 Nox KG/Jahr</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>NOX_kg_a</ogc:PropertyName>
                <ogc:Literal>22511.13701199999923119</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>NOX_kg_a</ogc:PropertyName>
                <ogc:Literal>28138.92088000000148895</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>circle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#bd0026</se:SvgParameter>
                </se:Fill>
              </se:Mark>
              <se:Size>32</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
        <se:VendorOption name="sortBy">NOX_kg_a</se:VendorOption>
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>