# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module Files
          #
          # Deletes a file.
          #
          # @option options [file] :file
          #   ID of file to delete.
          # @see https://api.slack.com/methods/files.delete
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/files/files.delete.json
          def files_delete(options = {})
            throw ArgumentError.new('Required arguments :file missing') if options[:file].nil?
            post('files.delete', options)
          end

          #
          # Change the properties of a file (undocumented)
          #
          # @option options [Object] :file
          #   ID of the file to be edited
          # @option options [Object] :title
          #   New title of the file
          # @option options [Object] :filetype
          #   New filetype of the file. See https://api.slack.com/types/file#file_types for a list of all supported types.
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/undocumented/files/files.edit.json
          def files_edit(options = {})
            throw ArgumentError.new('Required arguments :file missing') if options[:file].nil?
            throw ArgumentError.new('Required arguments :title missing') if options[:title].nil?
            logger.warn('The files.edit method is undocumented.')
            post('files.edit', options)
          end

          #
          # Gets information about a team file.
          #
          # @option options [file] :file
          #   Specify a file by providing its ID.
          # @option options [Object] :cursor
          #   Parameter for pagination. File comments are paginated for a single file. Set cursor equal to the next_cursor attribute returned by the previous request's response_metadata. This parameter is optional, but pagination is mandatory: the default value simply fetches the first "page" of the collection of comments. See pagination for more details.
          # @option options [Object] :limit
          #   The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the list hasn't been reached.
          # @see https://api.slack.com/methods/files.info
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/files/files.info.json
          def files_info(options = {})
            throw ArgumentError.new('Required arguments :file missing') if options[:file].nil?
            if block_given?
              Pagination::Cursor.new(self, :files_info, options).each do |page|
                yield page
              end
            else
              post('files.info', options)
            end
          end

          #
          # Lists & filters team files.
          #
          # @option options [channel] :channel
          #   Filter files appearing in a specific channel, indicated by its ID.
          # @option options [Object] :ts_from
          #   Filter files created after this timestamp (inclusive).
          # @option options [Object] :ts_to
          #   Filter files created before this timestamp (inclusive).
          # @option options [Object] :types
          #   Filter files by type:
          #
          #   all - All files
          #   spaces - Posts
          #   snippets - Snippets
          #   images - Image files
          #   gdocs - Google docs
          #   zips - Zip files
          #   pdfs - PDF files
          #
          #
          #   You can pass multiple values in the types argument, like types=spaces,snippets.The default value is all, which does not filter the list.
          #   .
          # @option options [user] :user
          #   Filter files created by a single user.
          # @see https://api.slack.com/methods/files.list
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/files/files.list.json
          def files_list(options = {})
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            post('files.list', options)
          end

          #
          # Revokes public/external sharing access for a file
          #
          # @option options [file] :file
          #   File to revoke.
          # @see https://api.slack.com/methods/files.revokePublicURL
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/files/files.revokePublicURL.json
          def files_revokePublicURL(options = {})
            throw ArgumentError.new('Required arguments :file missing') if options[:file].nil?
            post('files.revokePublicURL', options)
          end

          #
          # Share an existing file in a channel (undocumented)
          #
          # @option options [Object] :file
          #   ID of the file to be shared
          # @option options [channel] :channel
          #   Channel to share the file in. Works with both public (channel ID) and private channels (group ID).
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/undocumented/files/files.share.json
          def files_share(options = {})
            throw ArgumentError.new('Required arguments :file missing') if options[:file].nil?
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            logger.warn('The files.share method is undocumented.')
            post('files.share', options)
          end

          #
          # Enables a file for public/external sharing.
          #
          # @option options [file] :file
          #   File to share.
          # @see https://api.slack.com/methods/files.sharedPublicURL
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/files/files.sharedPublicURL.json
          def files_sharedPublicURL(options = {})
            throw ArgumentError.new('Required arguments :file missing') if options[:file].nil?
            post('files.sharedPublicURL', options)
          end

          #
          # Uploads or creates a file.
          #
          # @option options [Object] :channels
          #   Comma-separated list of channel names or IDs where the file will be shared.
          # @option options [Object] :content
          #   File contents via a POST variable. If omitting this parameter, you must provide a file.
          # @option options [file] :file
          #   File contents via multipart/form-data. If omitting this parameter, you must submit content.
          # @option options [Object] :filename
          #   Filename of file.
          # @option options [Object] :filetype
          #   A file type identifier.
          # @option options [Object] :initial_comment
          #   The message text introducing the file in specified channels.
          # @option options [Object] :thread_ts
          #   Provide another message's ts value to upload this file as a reply. Never use a reply's ts value; use its parent instead.
          # @option options [Object] :title
          #   Title of file.
          # @see https://api.slack.com/methods/files.upload
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/files/files.upload.json
          def files_upload(options = {})
            post('files.upload', options)
          end
        end
      end
    end
  end
end
