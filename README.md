# METAR Private Plugin for TRMNL

This [TRMNL](https://usetrmnl.com/) plugin displays the current weather conditions for a single METAR station.

Data is provided by NOAA's [Aviation Weather Center](https://aviationweather.gov/data/api/).

![Preview of TRMNL dashboard](preview.png)

# Installation

This is a private plugin, so it's not available in the plugin store. Follow the detailed directions below to add it to your device.

- Strategy: Polling
- Polling URL: `https://aviationweather.gov/api/data/metar?format=geojson&ids=KABC`
  - Substitute `KABC` for the ICAO identifier
- Refresh rate: Hourly
- Markup: [Full view](templates/_view_full.liquid)

## Step 1: Create a New Private Plugin

Log in to your TRMNL dashboard.
On the left-hand menu, click on the 'Go to Plugins' button.
Find the 'Private Plugin' Plugin to create a Private Plugin.
Click 'Add new' to create a new Private Plugin.

## Step 2: Set up the Polling Strategy

Name your plugin (e.g., "KABC METAR") then scroll down to the 'Strategy' section.
Choose the 'Polling' strategy from the 'Strategy' dropdown menu.
In the 'Polling URL' field, enter the following URL, substituting `KABC` for the ICAO identifier of
station you wish to see:

```
https://aviationweather.gov/api/data/metar?format=geojson&ids=KABC
```

Click 'Save'. Once it is saved, the 'Edit Markup' button is now available.

## Step 3: Add the HTML Markup

Click the 'Edit Markup' button, and paste in the contents of the [full view template](templates/_view_full.liquid).

## Step 4: Save and Activate the Plugin

Once you have entered the markup, click Save to store the plugin.

Change the refresh rate to 'Hourly'.

Navigate to the Playlists tab in your TRMNL dashboard.

Drag and drop your new Deep Space Network plugin to the top of your playlist if not automatically added.

## Step 5: View the Dashboard on Your Device

Once refreshed, your TRMNL device will display the Deep Space Network status.
