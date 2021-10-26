import React from 'react'
import { Menu, Icon } from 'semantic-ui-react'
export default function Users() {

    return (
        <div>
        <Menu icon='labeled' vertical>
        <Menu.Item
          name='user'
        >
          <Icon name='user' />
          Kullanıcılar
        </Menu.Item>

        <Menu.Item
          name='facebook messenger'
        >
          <Icon name='facebook messenger' />
          Mesajlar
        </Menu.Item>

        <Menu.Item
          name='chart bar outline'
        >
          <Icon name='chart bar outline' />
          Son Durum
        </Menu.Item>
      </Menu>
        </div>
    )
}
