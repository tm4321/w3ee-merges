/***********************************************************************/
/** 	Manguz Fog and DOF Tweaker ver 3.0
/** 	18082017
/** 	
/***********************************************************************/

class CMFDTw {

private var isFogEnabled						: bool;
private var isDofEnabled						: bool;
private var isPopEnabled						: bool;
	default	isFogEnabled 						= true;
	default isDofEnabled						= true;
	default isPopEnabled						= true;
	
private var inGameConfigWrapper 				: CInGameConfigWrapper;

private var envID 								: Int32;
private var blendOutTime						: Int32;
private var blendInTime							: Int32;
private var dofdefinition		 				: array<String>;
private var dofpriority 						: Int32;
private var dofstrength 						: Float;
private var dofnearBlurDist						: Float;
private var dofnearFocusDist					: Float;
private var doffarBlurDist						: Float;
private var doffarFocusDist						: Float;
private var dofactivatedSkyTreshold				: bool;
private var dofactivatedSkyRange				: bool;
private var dofskyRange							: Float;
private var envdef 								: CEnvironmentDefinition;

private var selectedFogDensityValue 			: Float;

private var witcher 							: W3PlayerWitcher;
private var catPower							: bool; 
	default catPower							= false; 

	public function Init() {
				
				witcher = GetWitcherPlayer();
				catPower = witcher.HasBuff( EET_Cat ); 
				
				if (catPower) {
				
						return;
						
				}
				
				blendOutTime = 2;
				blendInTime = 2;
									
				inGameConfigWrapper = theGame.GetInGameConfigWrapper();
			
				isFogEnabled = inGameConfigWrapper.GetVarValue('MFDMenuFog', 'EnableFog');
				isDofEnabled = inGameConfigWrapper.GetVarValue('MFDMenuDOF', 'EnableDoF');
				isPopEnabled = inGameConfigWrapper.GetVarValue('MFDMenu', 'EnablePop');
				selectedFogDensityValue = StringToFloat(inGameConfigWrapper.GetVarValue('MFDMenuFog', 'fogDensity'));
												   
				if (isFogEnabled && isDofEnabled) {
					
					EnableFog();
					ActivateDepthOfField();
					if (isPopEnabled) {
							theGame.GetGuiManager().ShowNotification("Fog Tweak ON: " + StringToFloat(inGameConfigWrapper.GetVarValue('MFDMenuFog', 'fogDensity')) + "<br>" + "DOF Tweak ON: " + envdef.envParams.m_depthOfField.intensity.dataCurveValues[0].lue);
					}
																		
				} 
					
				if (!isFogEnabled && !isDofEnabled) {
					
					DisableCatViewFx(1.5f);
					DeactivateDepthOfField();
					if (isPopEnabled) {
							theGame.GetGuiManager().ShowNotification("Fog Tweak and DOF Tweak OFF");
					}
				}
					
				if (!isFogEnabled && isDofEnabled)	{
						
					DisableCatViewFx(1.5f);
					ActivateDepthOfField();
					if (isPopEnabled) {
							theGame.GetGuiManager().ShowNotification("DOF Tweak ON: " + envdef.envParams.m_depthOfField.intensity.dataCurveValues[0].lue + "<br>" + "Fog Tweak OFF");
					}												
				}  
					
				if (isFogEnabled && !isDofEnabled) {
					
					DeactivateDepthOfField();
					EnableFog();
					if (isPopEnabled) {
							theGame.GetGuiManager().ShowNotification("Fog Tweak ON: " + StringToFloat(inGameConfigWrapper.GetVarValue('MFDMenuFog', 'fogDensity')) + "<br>" + "DOF Tweak OFF");
					}
				}
	}
				
	public function EnableFog() {

				//DisableCatViewFx(2.0f); 		
				EnableCatViewFx(1.5f);
				SetTintColorsCatViewFx(Vector(0,0,0,0), Vector(0,0,0,0),0);
				SetPositionCatViewFx(Vector(0,0,0,0) , true);
				SetFogDensityCatViewFx(selectedFogDensityValue);
	
	}

	public function ActivateDepthOfField() {
	
				DeactivateDepthOfField();
				
				dofpriority = 1000; 
				dofstrength = StringToFloat(inGameConfigWrapper.GetVarValue('MFDMenuDOF', 'dofBlend'));	
	
				dofnearBlurDist = StringToFloat(inGameConfigWrapper.GetVarValue('MFDMenuDOF','dofNearBlurDist'));
				dofnearFocusDist = StringToFloat(inGameConfigWrapper.GetVarValue('MFDMenuDOF','dofNearFocusDist'));
				doffarBlurDist = StringToFloat(inGameConfigWrapper.GetVarValue('MFDMenuDOF','dofFarBlurDist'));
				doffarFocusDist = StringToFloat(inGameConfigWrapper.GetVarValue('MFDMenuDOF','dofFarFocusDist'));

				dofactivatedSkyTreshold = inGameConfigWrapper.GetVarValue('MFDMenuDOF','dofActivatedSkyTreshold');
				dofactivatedSkyRange = inGameConfigWrapper.GetVarValue('MFDMenuDOF','dofActivatedSkyRange');
				dofskyRange = StringToFloat(inGameConfigWrapper.GetVarValue('MFDMenuDOF','dofSkyRange'));
	
				envdef = ( CEnvironmentDefinition )LoadResource("dlc\dlcmfdt\data\env\mfdt.env", true );
	
				envdef.envParams.m_depthOfField.intensity.dataCurveValues[0].lue = dofstrength;		
				envdef.envParams.m_depthOfField.nearBlurDist.dataCurveValues[0].lue = dofnearBlurDist;
				envdef.envParams.m_depthOfField.nearFocusDist.dataCurveValues[0].lue = dofnearFocusDist;
				envdef.envParams.m_depthOfField.farBlurDist.dataCurveValues[0].lue = doffarBlurDist;
				envdef.envParams.m_depthOfField.farFocusDist.dataCurveValues[0].lue = doffarFocusDist;
				envdef.envParams.m_depthOfField.activatedSkyThreshold = dofactivatedSkyTreshold;
				envdef.envParams.m_depthOfField.activatedSkyRange = dofactivatedSkyRange;
				envdef.envParams.m_depthOfField.skyRange = dofskyRange;
	
	
				if(envdef) {
	
					envID = ActivateEnvironmentDefinition(envdef, dofpriority, 1.0, blendInTime);
					theGame.SetEnvironmentID(envID);
				}
	
	}

	public function DeactivateDepthOfField() {

				DeactivateEnvironment(envID, blendOutTime);
      
	}

}