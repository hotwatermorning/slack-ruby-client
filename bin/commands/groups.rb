# This file was auto-generated by lib/tasks/web.rake

desc "Get info on your team's private channels."
command 'groups' do |g|
  g.desc 'Archives a private channel.'
  g.long_desc %( Archives a private channel. )
  g.command 'archive' do |c|
    c.flag 'channel', desc: 'Private channel to archive.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_archive(options))
    end
  end

  g.desc 'Closes a private channel.'
  g.long_desc %( Closes a private channel. )
  g.command 'close' do |c|
    c.flag 'channel', desc: 'Private channel to close.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_close(options))
    end
  end

  g.desc 'Creates a private channel.'
  g.long_desc %( Creates a private channel. )
  g.command 'create' do |c|
    c.flag 'name', desc: 'Name of private channel to create.'
    c.flag 'validate', desc: 'Whether to return errors on invalid channel name instead of modifying it to meet the specified criteria.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_create(options))
    end
  end

  g.desc 'Clones and archives a private channel.'
  g.long_desc %( Clones and archives a private channel. )
  g.command 'createChild' do |c|
    c.flag 'channel', desc: 'Private channel to clone and archive.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_createChild(options))
    end
  end

  g.desc 'Fetches history of messages and events from a private channel.'
  g.long_desc %( Fetches history of messages and events from a private channel. )
  g.command 'history' do |c|
    c.flag 'channel', desc: 'Private channel to fetch history for.'
    c.flag 'inclusive', desc: 'Include messages with latest or oldest timestamp in results.'
    c.flag 'latest', desc: 'End of time range of messages to include in results.'
    c.flag 'oldest', desc: 'Start of time range of messages to include in results.'
    c.flag 'unreads', desc: 'Include unread_count_display in the output?.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_history(options))
    end
  end

  g.desc 'Gets information about a private channel.'
  g.long_desc %( Gets information about a private channel. )
  g.command 'info' do |c|
    c.flag 'channel', desc: 'Private channel to get info on.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_info(options))
    end
  end

  g.desc 'Invites a user to a private channel.'
  g.long_desc %( Invites a user to a private channel. )
  g.command 'invite' do |c|
    c.flag 'channel', desc: 'Private channel to invite user to.'
    c.flag 'user', desc: 'User to invite.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_invite(options))
    end
  end

  g.desc 'Removes a user from a private channel.'
  g.long_desc %( Removes a user from a private channel. )
  g.command 'kick' do |c|
    c.flag 'channel', desc: 'Private channel to remove user from.'
    c.flag 'user', desc: 'User to remove from private channel.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_kick(options))
    end
  end

  g.desc 'Leaves a private channel.'
  g.long_desc %( Leaves a private channel. )
  g.command 'leave' do |c|
    c.flag 'channel', desc: 'Private channel to leave.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_leave(options))
    end
  end

  g.desc 'Lists private channels that the calling user has access to.'
  g.long_desc %( Lists private channels that the calling user has access to. )
  g.command 'list' do |c|
    c.flag 'exclude_archived', desc: "Don't return archived private channels."
    c.flag 'exclude_members', desc: 'Exlude the members from each group.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_list(options))
    end
  end

  g.desc 'Sets the read cursor in a private channel.'
  g.long_desc %( Sets the read cursor in a private channel. )
  g.command 'mark' do |c|
    c.flag 'channel', desc: 'Private channel to set reading cursor in.'
    c.flag 'ts', desc: 'Timestamp of the most recently seen message.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_mark(options))
    end
  end

  g.desc 'Opens a private channel.'
  g.long_desc %( Opens a private channel. )
  g.command 'open' do |c|
    c.flag 'channel', desc: 'Private channel to open.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_open(options))
    end
  end

  g.desc 'Renames a private channel.'
  g.long_desc %( Renames a private channel. )
  g.command 'rename' do |c|
    c.flag 'channel', desc: 'Private channel to rename.'
    c.flag 'name', desc: 'New name for private channel.'
    c.flag 'validate', desc: 'Whether to return errors on invalid channel name instead of modifying it to meet the specified criteria.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_rename(options))
    end
  end

  g.desc 'Retrieve a thread of messages posted to a private channel'
  g.long_desc %( Retrieve a thread of messages posted to a private channel )
  g.command 'replies' do |c|
    c.flag 'channel', desc: 'Private channel to fetch thread from.'
    c.flag 'thread_ts', desc: "Unique identifier of a thread's parent message."
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_replies(options))
    end
  end

  g.desc 'Sets the purpose for a private channel.'
  g.long_desc %( Sets the purpose for a private channel. )
  g.command 'setPurpose' do |c|
    c.flag 'channel', desc: 'Private channel to set the purpose of.'
    c.flag 'purpose', desc: 'The new purpose.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_setPurpose(options))
    end
  end

  g.desc 'Sets the topic for a private channel.'
  g.long_desc %( Sets the topic for a private channel. )
  g.command 'setTopic' do |c|
    c.flag 'channel', desc: 'Private channel to set the topic of.'
    c.flag 'topic', desc: 'The new topic.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_setTopic(options))
    end
  end

  g.desc 'Unarchives a private channel.'
  g.long_desc %( Unarchives a private channel. )
  g.command 'unarchive' do |c|
    c.flag 'channel', desc: 'Private channel to unarchive.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_unarchive(options))
    end
  end

  g.desc 'This method returns the ID of a group.'
  g.long_desc %( This method returns the ID of a group. )
  g.command 'id' do |c|
    c.flag 'channel', desc: 'Group channel to get ID for, prefixed with #.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_id(options))
    end
  end
end
