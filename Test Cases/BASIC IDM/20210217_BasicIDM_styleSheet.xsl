<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

    <xsl:template match="/">

        <html>
            <!--title : Window Title-->
            <title><xsl:value-of select="idm/specId/@fullTitle"/></title>

            <!--each page's design-->
            <style> 
                <!--font setting-->
                
                @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue');
                <!--
                @font-face{
                    font-family: "Bebas_Kai";
                    src:url("bebas_kai/BebasKai.ttf") format("truetype");
                }
                -->
                caption {
                font-family: sans-serif;
                font-size: 18pt;
                text-align: left;
                }

                #captionFigure {
                font-family: sans-serif;
                font-size: 12pt;
                text-align: left;
                }

                <!--cover-->
                .cover {
                width: 794px;
                margin-left: 20px
                margin-right: 20px;
                background-color: white;
                }

                <!--contents pages-->
                .page {
                width: 794px;
                margin-left: 20px;
                margin-right: 20px;
                margin-top: 20px;
                margin-bottom: 20px;
                }

                #sameAs {
                text-align: left;
                }


                }
                .con_table{
                border: 1px solid #91C9D5;
                border-collapse: collapse;
                width: 750px;
                margin-left: 20px;
                margin-right: 20px;
                }

                .con_table th{
                border: 1px solid #91C9D5;
                background-color: #91C9D5;
                text-transform: capitalize;
                font-weight: normal;
                font-family: 'Bebas Neue', cursive;
                font-size: 18pt;
                text-align: center;
                width: 789px;
                }

                .con_table td{
                border: 1px solid #91C9D5;
                font-family: sans-serif;
                background-color: #91C9D5;
                font-size: 8pt;
                text-align: center;
                }

                .con_table timg{
                border: 1px solid #91C9D5;
                border-collapse: collapse;
                }

                .info_unit_table {
                width: 750px;
                border-collapse: collapse;
                
                }
               
            

                .page #idmCode {
                font-family: sans-serif;
                margin-left: 28pt;
                font-size: 12pt;
                }

                title_black{
                text-transform: uppercase;
                font-family: 'Bebas Neue', cursive;
                width: 300px
                height: 100px;
                text-align: left;
                font-size: 28pt;
                font-weight: border;
                float: left;
                padding-top: 80px;
                padding-bottom: 100px;
                margin-left: 5px;
                }
            
                title_pink{
                text-transform: uppercase;
                font-family: 'Bebas Neue', cursive;
                text-transform: capitalize;
                width: 300px
                height: 100px;
                font-size: 28pt;
                color: #F2706C;
                float: left;
                padding-top: 80px;
                padding-bottom: 100px;
                margin-left: 5px;
                }
            
                #idmFullTitle {
                font-family: sans-serif;
                text-align: left;
                font-size: 14pt;
                }

                #idmSubTitle {
                font-family: sans-serif;
                text-align: left;
                font-size: 14pt;
                }

                #idmShortTitle {
                    font-family: sans-serif;
                    font-size: 10pt;
                }

                #idmCode {
                font-family: sans-serif;
                text-align: left;
                font-size: 14pt;
                }

                contents {
                font-family: sans-serif;
                text-align: left;
                font-size: 10pt;
                }
            </style>

            <xsl:call-template name="cover"/>
            <!--this example doesn't contail PM or ER
            <xsl:call-template name="processMap"/>
            <xsl:call-template name="exchangeRequirement"/>
            -->
            <xsl:call-template name="aimAndScope"/>
            <xsl:call-template name="summary"/>
            <xsl:for-each select="idm/er/informationUnit">
                <xsl:call-template name="informationUnit"/>
            </xsl:for-each>
            
        </html>
    </xsl:template>
    
    <xsl:template name="cover">
        <div class="cover">
            <img src="https://blog.kakaocdn.net/dn/bap5bI/btqSDt4KkWy/dx70Sekef0Yz5uZ4iHiKU1/img.png" style="float:left;width:200px;"/>
            <title_black>bim </title_black>
            <title_pink><xsl:value-of select="idm/specId/@fullTitle"/></title_pink>
            <title_pink>(idm)</title_pink>
        </div>
    </xsl:template>
    
    <xsl:template name="aimAndScope">
        <div class="page">
            <table class="con_table" style="width: 789px; border-collapse:collapse;">
                <tr>
                    <th colspan="3" style="width: 789px; text-transform:uppercase">why are we sharing this information unambiguously?</th>
                </tr>
                <tr>
                    <td colspan="3" style="width: 789px; padding-left: 150px; padding-right: 150px;">
                    <xsl:value-of select="idm/uc/@aimAndScope"/></td>
                </tr>
                <tr>
                <td style="width=66%; background-color:white">
                    <img width="auto" height="100px" src="https://blog.kakaocdn.net/dn/GF9fC/btqSKMbaFB7/bjNdPHBlopJiLpH36jXKxK/img.png">
                    </img>
                </td>
                <td style="width=66%; background-color:white">
                    <img width="auto" height="100px" src="https://blog.kakaocdn.net/dn/bbkXt2/btqSPE4AeNI/rMsjiiwbT10usEyWxbYtbk/img.png">
                    </img>
                </td>
                </tr>
            </table>
        </div>
    </xsl:template>
    <xsl:template name="summary">
        <div class="page">
            <table class="con_table" style="width: 789px; border-collapse:collapse;">
                <tr>
                    <th colspan="3" style="width: 789px; text-transform:uppercase">how are we going to share this information unambiguously?</th>
                </tr>
                <tr>
                    <td colspan="3" style="width: 789px; padding-left: 150px; padding-right: 150px;">
                    <xsl:value-of select="idm/uc/@summary"/></td>
                </tr>
                <tr>
                <td style="width=66%; background-color:white">
                    <img width="auto" height="100px" src="https://blog.kakaocdn.net/dn/bjPpgJ/btqSIZaPevL/cVBON3sCqIa5w6wKh4Mnm1/img.png">
                    </img>
                </td>
                <td style="width=66%; background-color:white">
                    <img width="auto" height="100px" src="https://blog.kakaocdn.net/dn/Ec9Xj/btqSGihqId2/hV0TkRVfcZkHTXe47Kh2f0/img.png">
                    </img>
                </td>
                <td style="width=66%; background-color:white">
                    <img width="auto" height="100px" src="https://blog.kakaocdn.net/dn/IQeA6/btqSLHtR8Kk/qYaj814YR2esIpZ5ePT4N1/img.png">
                    </img>
                </td>
                </tr>
            </table>
        </div>
    </xsl:template>

    <xsl:template name="processMap">
        <div class="page">
            <h1><xsl:value-of select="idm/pm/specId/@fullTitle"/> (PM)</h1>
            <hr style="height:2px;border-width:1px;color:#91C9D5;background-color:#002266;"/>
            <contents>Edited by <xsl:value-of select="idm/pm/authoring/author/@firstName"/>, on <xsl:value-of select="idm/pm/authoring/changeLog/@changeDate"/></contents>

            <br/>
            <br/>
            <h2>Summary</h2>
            <contents><xsl:value-of select="idm/uc/@summary"/></contents>

            <h2><xsl:value-of select="idm/pm/associatedPmDiagram/@pmDiagramName"/></h2>
            <img src="PM.png" style="style=vertical-align:middle; width:750px"/>

            <table class="con_table">
                <xsl:for-each select="idm/pm">    
                <tr>
                    <td rowspan="4"><xsl:value-of select="associatedPmDiagram/@pmDiagramId"/></td>
                    <td>author</td>
                    <td><xsl:value-of select="authoring/author/@firstName"/></td>
                    <td>created</td>
                    <td><xsl:value-of select="authoring/changeLog/@changeDate"/><xsl:value-of select="authoring/changeLog/@changeTime"/></td>
                    <td rowspan="4"><img src="https://blog.kakaocdn.net/dn/blm7VV/btqKSWzUsoo/cW7XyvFD0qoXmwvqHwF4Kk/img.png" width="200px"/></td>
                </tr>
                <tr>
                    <td>version</td>
                    <td><xsl:value-of select="specId/@version"/></td>
                    <td>modified</td>
                    <td><xsl:value-of select="authoring/changeLog/@changeDate"/><xsl:value-of select="authoring/changeLog/@changeTime"/></td>
                </tr>
                <tr>
                    <td>status</td>
                    <td><xsl:value-of select="specId/@isoStatus"/></td>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td colspan="4"><xsl:value-of select="associatedPmDiagram/@pmDiagramFileName"/></td>
                </tr>
                </xsl:for-each>
            </table>

            <br/>

            <table class="con_table">
                <tr>
                    <th>Id</th>
                    <th>Type</th>
                    <th>Name</th>
                    <th>Description</th>
                </tr>
                <xsl:for-each select="idm/pm/associatedPmDiagram/pmElement">
                <tr>
                    <td><xsl:number value="position()" format="1"/></td>
                    <td><xsl:value-of select="@type"/></td>
                    <td><xsl:value-of select="@name"/></td>
                    <td><xsl:value-of select="@description"/></td>
                </tr>
                </xsl:for-each>
            </table>

            <br/>

            <h2>Role Overview</h2>
            <contents>The primary roles shown in the process model diagram (as "swimlanes") are defined as: </contents>

            <br/>
            <br/>

            <table>
                <xsl:for-each select="idm/uc/actorClassification/actor">
                <tr>
                    <td style="font-family: sans-serif; font-size: 10pt;"><xsl:value-of select="@role"/></td>
                </tr>
                </xsl:for-each>
            </table>
        </div>
    </xsl:template>

    <xsl:template name="exchangeRequirement">
        <div class="page">
            <h1><xsl:value-of select="idm/er/specId/@fullTitle"/> (ER)</h1>
            <hr style="height:2px;border-width:1px; color:#91C9D5; background-color:#002266;"/>
            <contents>Edited by <xsl:value-of select="idm/er/authoring/author/@firstName"/>, on <xsl:value-of select="idm/er/authoring/changeLog/@changeDate"/></contents>

            <br/>
            <br/>
            <h2>Summary</h2>
            <contents><xsl:value-of select="idm/er/@comments"/></contents>
        </div>
        
    </xsl:template>

    <xsl:template name="informationUnit">
        <div class="page">
            <table class="con_table" style="width: 789px; border-collapse:collapse;">
                <!--Information Unit name-->
                <tr>
                    <th colspan="3" style="width: 789px;"><xsl:value-of select="@name"/></th>
                </tr>
                <!--Information Unit description-->
                <tr>
                    <td colspan="3" style="width: 789px; padding-left: 150px; padding-right: 150px;">
                    <xsl:value-of select="@definition"/></td>
                </tr>
                <tr>
                <!--graphical example-->
                <xsl:for-each select="graphicalExample">
                    <td style="width=66%; background-color:white">
                        
                        <img width="auto" height="100px"><xsl:attribute name="src">
                            <xsl:value-of select="@fullFilePath"/>
                                </xsl:attribute>
                        </img>
                        
                    </td>
                </xsl:for-each>
                <!--Sub Information Unit-->
                    <xsl:for-each select="subInformationUnit/informationUnit">
                        <td style="background-color:white; vertical-align:top;">
                            <table class="con_table" style="width: 260px; height: auto; background-color:white; height: px; border-collapse: collapse;">
                                <!--name-->
                                <tr>
                                    <td colspan="2" style="padding-left:10px; font-size: 12pt; font-family: 'Bebas Neue', cursive; padding-top:10px; text-align:left; background-color:white; border-color: white;"><xsl:value-of select="@name"/></td>
                                </tr>
                                <!--description-->
                                <tr>
                                <td style="vertical-align: top; border-color:white; background-color:white;border-collapse:collapse;">
                                <img width="20px" height="auto" src="https://blog.kakaocdn.net/dn/boyzix/btqSGj8ooIZ/LgTTWnz5UcEUXnkzpaEtKk/img.png"/></td>
                                <td style="margin:0px; padding:0px; font-size:12px; text-align:left; background-color:white;border-color:white;"><xsl:value-of select="@definition"/></td>
                                </tr>
                                <!--text example-->
                                <xsl:for-each select="textualExample">
                                <tr>
                                <td style="background-color:white;border-color:white;"></td>
                                    <td style="color:#91C9D5; font-size:8px; text-align:left; background-color:white;border-color: white;">example:<xsl:value-of select="@description"/></td>
                                </tr>
                                </xsl:for-each>
                                <!--graphical example-->
                                <xsl:for-each select="graphicalExample">
                                <tr>
                                    <td colspan="2" style="vertical-align: bottom; background-color:white; border-color: white;">
                                        
                                            <img width="auto" height="100px"><xsl:attribute name="src">
                                            <xsl:value-of select="@fullFilePath"/>
                                            </xsl:attribute>
                                            </img>
                                        
                                    </td>
                                </tr>
                                </xsl:for-each>
                                
                            </table>
                        </td>
                    </xsl:for-each>
                    
               </tr>
            </table>
        </div>
    </xsl:template>
    



</xsl:stylesheet>
