#!/usr/bin/env wolframscript

(* Wolfram Script *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)
(* :Author: Lance *)
(* :Date: 2023-04-26 *)

<<PacletTools`

PacletBuild::buildFail =
    "Paclet build failed."
PacletBuild::buildSuccess =
    "Paclet build succeeded."
RenameFile::copySuccess =
    "Paclet moved to `1`."

scriptDir = DirectoryName @ $InputFileName;
SetDirectory @ scriptDir;

copyDest = "../Paclets";
Print["Importing paclet info..."]
paclet = Import["..\\NCFPS\\PacletInfo.m"];
Print["Appending site info location to paclet info..."]
siteInfo =
    PacletSite[
      Append[paclet,
        Location ->
            "https://raw.githubusercontent.com/LBerlin/NCFPS-MMA/main"
      ]
    ];

Print["Building paclet..."]
buildResult = PacletBuild["../NCFPS"];

If[
  Head@buildResult == Success,
  pacletFile = buildResult[[2]]["PacletArchive"];
  Print["Build successful. Moving paclet..."];
  pacletMove = RenameFile[
    pacletFile,
    FileNameJoin[{copyDest, FileNameTake[pacletFile]}]
  ];
  Message[RenameFile::copySuccess, pacletMove],
  Message[PacletBuild::buildFail]
];