import React, {useState} from 'react'
import { Container, Menu } from 'semantic-ui-react'
import "./navi.css"
import SignedIn from './SignedIn'
import SignedOut from './SignedOut'

export default function Navi() {

    const [isAuthenticated, setIsAuthenticated] = useState(false)

    function handleSignOut(params) {
        setIsAuthenticated(true)
    }

    function handleSignIn(params) {
        setIsAuthenticated(false)
    }

    return (
        <div>
            <Menu inverted fixed="top">
                <span position='left' className="logo">Hrms</span>
                <Container>
                    <Menu.Item
                        name='Ana Sayfa'
                    />
                    <Menu.Menu position='right'>
                        {isAuthenticated?<SignedIn signedIn={handleSignIn}/>:<SignedOut signedOut={handleSignOut}/>}
                        
                    </Menu.Menu>
                </Container>
            </Menu>
        </div>
    )
}
