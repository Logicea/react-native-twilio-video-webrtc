//
//  TwilioSharingLocalView.js
//  Logicea
//
//  Created by Petros Sfikakis on 15/12/17.
//
//

import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { requireNativeComponent } from 'react-native'

class TwilioSharingLocalView extends Component {
  static propTypes = {
    /**
     * Indicate if sharing feed is enabled.
     */
    enabled: PropTypes.bool.isRequired
  }

  render () {
    return <RCTTWLocalSharingView {...this.props}>{this.props.children}</RCTTWLocalSharingView>
  }
}

const RCTTWLocalSharingView = requireNativeComponent('RCTTWLocalSharingView', TwilioSharingLocalView)

module.exports = TwilioSharingLocalView
