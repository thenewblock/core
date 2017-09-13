/*
 * Copyright (C) 2017 Elysium Project <https://github.com/elysium-project>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef INSTANCE_STATISTICS_H
#define INSTANCE_STATISTICS_H

#include "Common.h"


struct InstanceCreatureKlls
{
    uint32 mapId;
    uint32 creatureEntry;
    std::map<uint32, uint32> killsBySpells; 
};

struct InstanceWipes
{
    uint32 mapId;
    uint32 creatureEntry;
    uint32 count;
};


class InstanceStatisticsMgr
{
public:
    InstanceStatisticsMgr() {}

    void LoadFromDB();

public:
    void IncrementWipeCounter(uint32 mapId, uint32 creatureEntry);
    void IncrementKillCounter(Creature* pKiller, Player* pVictim, SpellEntry const* spellProto);

private:
    void Save(uint32 mapId, uint32 creatureEntry, uint32 spellId, uint32 count);
    void Save(const InstanceWipes& iw);
    
    std::map<std::pair<uint32,uint32>,InstanceWipes>        m_instanceWipes;
    std::map<std::pair<uint32,uint32>,InstanceCreatureKlls> m_instanceCreatureKills;
};



#define sInstanceStatistics MaNGOS::Singleton<InstanceStatisticsMgr>::Instance()

#endif