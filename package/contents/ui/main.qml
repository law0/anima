/*
 * Copyright (C) 2020 by law0 <law0>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Library General Public License as
 * published by the Free Software Foundation; either version 2 or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this program; if not, write to the
 * Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.1

import org.kde.plasma.extras 2.0 as PlasmaExtras

Item {
    id: root

    readonly property string configuredImage: wallpaper.configuration.Image
    readonly property string modelImage: imageWallpaper.wallpaperPath
    readonly property int fillMode: wallpaper.configuration.FillMode

    /*PlasmaExtras.Title {
        anchors.centerIn: parent
        // use i18nd in wallpaper QML, as the default textdomain is not setup at least in Plasma 5.7
        text: wallpaper.configuration.DisplayText ||
              i18nd("plasma_wallpaper_org.kde.plasma.anima", "<Please configure a text to display>")
    }*/

    //public API, the C++ part will look for those
    function setUrl(url) {
        wallpaper.configuration.Image = url
    }

    onConfiguredImageChanged: {
        imageB.source = configuredImage
    }

    AnimatedImage {
        id: imageB
        source: "/home/lrasamoelison/Images/jap2.gif"
        anchors.fill: parent
        asynchronous: true
        cache: false
        fillMode: wallpaper.configuration.FillMode
    }
}
