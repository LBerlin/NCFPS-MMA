(*
 Wolfram Language script file.
 
 Can be run with WolframScript.
 In Eclipse, right-click -> Open With -> Other... ->
 External Programs -> WolframScript
*)

CreatePacletArchive::versionExists = 
	"Paclet version `1` already exists."
PacletSite::versionMissing = 
	"Paclet version does not exist";

scriptDir = DirectoryName @ $InputFileName;
SetDirectory @ scriptDir;

existingPaclets = FileNames["..\\Paclets\\*.paclet"];
versions = Last /@ StringSplit[FileBaseName /@ existingPaclets, "-"];
paclet = Import["..\\NCFPS\\PacletInfo.m"];
siteInfo = 
  PacletSite[
   Append[paclet, 
    Location -> 
     "https://raw.githubusercontent.com/LBerlin/NCFPS-MMA/master"]];
     
If[
 FreeQ[versions, 
  version = 
   Apply[Association][paclet][Version]],
 	If[
 	 !FailureQ[CreatePacletArchive["..\\NCFPS", 
 	 FileNameJoin[{DirectoryName @ scriptDir, "Paclets"}]]],
	Export["..\\PacletSite.m", siteInfo];
	CreateArchive["..\\PacletSite.m", "..\\PacletSite.mz", OverwriteTarget -> True];,
	Message[PacletSite::versionMissing]],
 Message[CreatePacletArchive::versionExists, version]
]

(* 
toMove = Pick[existingPaclets, 
   Order[#, FileNameTake[pacletFile]] & /@ existingPaclets, 1];

If[FailureQ@CopyFile[#, FileNameJoin[{"Archive", #}]], $Failed, 
    DeleteFile[#]] & /@ toMove; 
*)

(* TODO: PacletSite location string automatically reflect the checked out branch *)