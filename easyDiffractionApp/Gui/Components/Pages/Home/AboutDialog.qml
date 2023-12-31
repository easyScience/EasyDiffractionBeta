// SPDX-FileCopyrightText: 2023 EasyDiffraction contributors <support@easydiffraction.org>
// SPDX-License-Identifier: BSD-3-Clause
// © 2023 Contributors to the EasyDiffraction project <https://github.com/easyscience/EasyDiffraction>

import QtQuick

import EasyApp.Gui.Globals as EaGlobals
import EasyApp.Gui.Components as EaComponents

import Gui.Globals as Globals


EaComponents.AboutDialog {

    visible: EaGlobals.Vars.showAppAboutDialog
    onClosed: EaGlobals.Vars.showAppAboutDialog = false

    appIconPath: Globals.Configs.appConfig.icon
    appUrl: Globals.Configs.appConfig.homePageUrl

    appPrefixName: Globals.Configs.appConfig.namePrefixForLogo
    appSuffixName: Globals.Configs.appConfig.nameSuffixForLogo
    appVersion: Globals.Configs.appConfig.version
    appDate: Globals.Configs.appConfig.date

    commit: Globals.Configs.appConfig.commit
    commitUrl: Globals.Configs.appConfig.commitUrl
    branch: Globals.Configs.appConfig.branch
    branchUrl: Globals.Configs.appConfig.branchUrl

    eulaUrl: Globals.Configs.appConfig.licenseUrl
    oslUrl: Globals.Configs.appConfig.dependenciesUrl

    description: Globals.Configs.appConfig.description
    developerIcons: Globals.Configs.appConfig.developerIcons
    developerYearsFrom: Globals.Configs.appConfig.developerYearsFrom
    developerYearsTo: Globals.Configs.appConfig.developerYearsTo

}
