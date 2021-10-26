import React from 'react'
import CandidateList from '../pages/CandidateList'
import Users from './Users'
import { Grid } from 'semantic-ui-react'

export default function Dashboard() {
    return (
        <div>
            <Grid>
                <Grid.Row>
                    <Grid.Column width={4}>
                        <Users />
                    </Grid.Column>
                    <Grid.Column width={6}>
                        <CandidateList />
                    </Grid.Column>
                </Grid.Row>
            </Grid>
        </div>
    )
}
