import React, { useState, useEffect } from 'react'
import { Header, Table } from 'semantic-ui-react'
import CandidateService from '../services/candidateService'
export default function CandidateList() {
    const [candidates, setCandidates] = useState([])

    useEffect(()=>{
        let candidateService = new CandidateService()
        candidateService.getCandidate().then(result=>setCandidates(result.data.data))
    },[])

    return (
        <div>
            <Table basic='very' celled collapsing>
                <Table.Header>
                    <Table.Row>
                        <Table.HeaderCell>Ad Soyad</Table.HeaderCell>
                        <Table.HeaderCell>E-Mail</Table.HeaderCell>
                        <Table.HeaderCell>Doğum Yılı</Table.HeaderCell>
                    </Table.Row>
                </Table.Header>

                <Table.Body>
                    {
                        candidates.map(candidate => (
                            <Table.Row key={candidate.id}>
                                <Table.Cell>
                                    <Header as='h4' image>
                                        <Header.Content>
                                            {candidate.firstName}
                                            <Header.Subheader>{candidate.lastName}</Header.Subheader>
                                        </Header.Content>
                                    </Header>
                                </Table.Cell>
                                <Table.Cell>{candidate.user.email}</Table.Cell>
                                <Table.Cell>{candidate.birthYear}</Table.Cell>
                            </Table.Row>
                        ))
                    }
                </Table.Body>
            </Table>
        </div>
    )
}
