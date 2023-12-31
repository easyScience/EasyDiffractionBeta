// SPDX-FileCopyrightText: 2023 EasyDiffraction contributors <support@easydiffraction.org>
// SPDX-License-Identifier: BSD-3-Clause
// © 2023 Contributors to the EasyDiffraction project <https://github.com/easyscience/EasyDiffraction>

import QtQuick
import QtQuick.Controls

import EasyApp.Gui.Globals as EaGlobals
import EasyApp.Gui.Charts as EaCharts

import Gui.Globals as Globals


EaCharts.Plotly1dMeasVsCalc {
    useWebGL: EaGlobals.Vars.useOpenGL //Globals.Proxies.main.plotting.useWebGL1d

    xAxisTitle: "x"
    yAxisTitle: "y"

    xMin: -10
    xMax: 10
    yMin: 0
    yMax: 4

    // Data is set in python backend

    onLoadSucceededStatusChanged: {
        if (loadSucceededStatus) {
            Globals.Proxies.main.analysis.defined = true
        }
    }

    Component.onCompleted: {
        Globals.Refs.app.analysisPage.plotView = this
        Globals.Proxies.main.plotting.setPlotlyChartRef('analysisPage', this)
    }

}

