#!/usr/bin/env ruby

# You can generate json by executing the following command on Terminal.
#
# $ ruby ./japanese.json.rb
#

require 'json'
require_relative '../lib/karabiner.rb'

def main
  puts JSON.pretty_generate(
    'title' => 'For Japanese （日本語環境向けの設定） (rev 4)',
    'rules' => [
      {
        'description' => 'コマンドキーを単体で押したときに、英数・かなキーを送信する。（左コマンドキーは英数、右コマンドキーはかな） (rev 3)',
        'manipulators' => [
          {
            'type' => 'basic',
            'from' => {
              'key_code' => 'left_command',
              'modifiers' => Karabiner.from_modifiers,
            },
            'parameters' => {
              'basic.to_if_held_down_threshold_milliseconds' => 100,
            },
            'to' => [
              {
                'key_code' => 'left_command',
              },
            ],
            'to_if_held_down' => [
              {
                'key_code' => 'left_command',
              },
            ],
            'to_if_alone' => [
              {
                'key_code' => 'japanese_eisuu',
              },
            ],
          },
          {
            'type' => 'basic',
            'from' => {
              'key_code' => 'right_command',
              'modifiers' => Karabiner.from_modifiers,
            },
            'parameters' => {
              'basic.to_if_held_down_threshold_milliseconds' => 100,
            },
            'to' => [
              {
                'key_code' => 'right_command',
              },
            ],
            'to_if_held_down' => [
              {
                'key_code' => 'right_command',
              },
            ],
            'to_if_alone' => [
              {
                'key_code' => 'japanese_kana',
              },
            ],
          },
        ],
      },
      {
        'description' => 'コマンドキー（左右どちらでも）を単体で押したときに、英数・かなをトグルで切り替える。',
        'manipulators' => [
          {
            'type' => 'basic',
            'conditions' => [
              {
                'input_sources' => [
                  {
                    'language' => 'ja',
                  },
                ],
                'type' => 'input_source_if',
              },
            ],
            'from' => {
              'key_code' => 'left_command',
              'modifiers' => Karabiner.from_modifiers,
            },
            'to' => [
              {
                'key_code' => 'left_command',
              },
            ],
            'to_if_alone' => [
              {
                'key_code' => 'japanese_eisuu',
              },
            ],
          },
          {
            'type' => 'basic',
            'conditions' => [
              {
                'input_sources' => [
                  {
                    'language' => 'en',
                  },
                ],
                'type' => 'input_source_if',
              },
            ],
            'from' => {
              'key_code' => 'left_command',
              'modifiers' => Karabiner.from_modifiers,
            },
            'to' => [
              {
                'key_code' => 'left_command',
              },
            ],
            'to_if_alone' => [
              {
                'key_code' => 'japanese_kana',
              },
            ],
          },
          {
            'type' => 'basic',
            'conditions' => [
              {
                'input_sources' => [
                  {
                    'language' => 'ja',
                  },
                ],
                'type' => 'input_source_if',
              },
            ],
            'from' => {
              'key_code' => 'right_command',
              'modifiers' => Karabiner.from_modifiers,
            },
            'to' => [
              {
                'key_code' => 'right_command',
              },
            ],
            'to_if_alone' => [
              {
                'key_code' => 'japanese_eisuu',
              },
            ],
          },
          {
            'type' => 'basic',
            'conditions' => [
              {
                'input_sources' => [
                  {
                    'language' => 'en',
                  },
                ],
                'type' => 'input_source_if',
              },
            ],
            'from' => {
              'key_code' => 'right_command',
              'modifiers' => Karabiner.from_modifiers,
            },
            'to' => [
              {
                'key_code' => 'right_command',
              },
            ],
            'to_if_alone' => [
              {
                'key_code' => 'japanese_kana',
              },
            ],
          },
        ],
      },
      {
        'description' => 'コマンドキー（右のみ）を単体で押したときに、英数・かなをトグルで切り替える。',
        'manipulators' => [
          {
            'type' => 'basic',
            'conditions' => [
              {
                'input_sources' => [
                  {
                    'language' => 'ja',
                  },
                ],
                'type' => 'input_source_if',
              },
            ],
            'from' => {
              'key_code' => 'right_command',
              'modifiers' => Karabiner.from_modifiers,
            },
            'to' => [
              {
                'key_code' => 'right_command',
              },
            ],
            'to_if_alone' => [
              {
                'key_code' => 'japanese_eisuu',
              },
            ],
          },
          {
            'type' => 'basic',
            'conditions' => [
              {
                'input_sources' => [
                  {
                    'language' => 'en',
                  },
                ],
                'type' => 'input_source_if',
              },
            ],
            'from' => {
              'key_code' => 'right_command',
              'modifiers' => Karabiner.from_modifiers,
            },
            'to' => [
              {
                'key_code' => 'right_command',
              },
            ],
            'to_if_alone' => [
              {
                'key_code' => 'japanese_kana',
              },
            ],
          },
        ],
      },
      {
        'description' => '英数・かなキーを他のキーと同時に押したときに、Optionキーを送信する',
        'manipulators' => [
          {
            'type' => 'basic',
            'from' => {
              'key_code' => 'japanese_eisuu',
              'modifiers' => Karabiner.from_modifiers,
            },
            'to' => [
              {
                'key_code' => 'left_option',
              },
            ],
            'to_if_alone' => [
              {
                'key_code' => 'japanese_eisuu',
              },
            ],
          },
          {
            'type' => 'basic',
            'from' => {
              'key_code' => 'japanese_kana',
              'modifiers' => Karabiner.from_modifiers,
            },
            'to' => [
              {
                'key_code' => 'right_option',
              },
            ],
            'to_if_alone' => [
              {
                'key_code' => 'japanese_kana',
              },
            ],
          },
        ],
      },
      {
        'description' => 'escキーを押したときに、英数キーも送信する（vim用）',
        'manipulators' => [
          {
            'type' => 'basic',
            'from' => {
              'key_code' => 'escape',
            },
            'to' => [
              {
                'key_code' => 'escape',
              },
              {
                'key_code' => 'japanese_eisuu',
              },
            ],
          },
        ],
      },
      {
        'description' => 'Ctrl+[を押したときに、英数キーも送信する（vim用） (rev 2)',
        'manipulators' => [
          {
            'type' => 'basic',
            'from' => {
              'key_code' => 'open_bracket',
              'modifiers' => Karabiner.from_modifiers(['control'], nil),
            },
            'to' => [
              {
                'key_code' => 'open_bracket',
                'modifiers' => ['control'],
              },
              {
                'key_code' => 'japanese_eisuu',
              },
            ],
            'conditions' => [
              {
                'type' => 'keyboard_type_if',
                'keyboard_types' => %w[
                  ansi
                  iso
                ],
              },
            ],
          },
          {
            'type' => 'basic',
            'from' => {
              'key_code' => 'close_bracket',
              'modifiers' => Karabiner.from_modifiers(['control'], nil),
            },
            'to' => [
              {
                'key_code' => 'close_bracket',
                'modifiers' => ['control'],
              },
              {
                'key_code' => 'japanese_eisuu',
              },
            ],
            'conditions' => [
              {
                'type' => 'keyboard_type_if',
                'keyboard_types' => [
                  'jis',
                ],
              },
            ],
          },
        ],
      },
      {
        'description' => 'Ctrl+[を押したときに、escキーと英数キーを送信する',
        'manipulators' => [
          {
            'type' => 'basic',
            'from' => {
              'key_code' => 'open_bracket',
              'modifiers' => Karabiner.from_modifiers(['control'], nil),
            },
            'to' => [
              {
                'key_code' => 'escape',
              },
              {
                'key_code' => 'japanese_eisuu',
              },
            ],
            'conditions' => [
              {
                'type' => 'keyboard_type_if',
                'keyboard_types' => %w[
                  ansi
                  iso
                ],
              },
            ],
          },
          {
            'type' => 'basic',
            'from' => {
              'key_code' => 'close_bracket',
              'modifiers' => Karabiner.from_modifiers(['control'], nil),
            },
            'to' => [
              {
                'key_code' => 'escape',
              },
              {
                'key_code' => 'japanese_eisuu',
              },
            ],
            'conditions' => [
              {
                'type' => 'keyboard_type_if',
                'keyboard_types' => [
                  'jis',
                ],
              },
            ],
          },
        ],
      },
      {
        'description' => '英数・かなキーをtoggle方式にする',
        'manipulators' => [
          {
            'conditions' => [
              {
                'type' => 'input_source_if',
                'input_sources' => [
                  {
                    'language' => 'ja',
                  },
                ],
              },
            ],
            'type' => 'basic',
            'from' => {
              'key_code' => 'japanese_kana',
            },
            'to' => [
              {
                'key_code' => 'japanese_eisuu',
              },
            ],
          },
          {
            'conditions' => [
              {
                'type' => 'input_source_unless',
                'input_sources' => [
                  {
                    'language' => 'ja',
                  },
                ],
              },
            ],
            'type' => 'basic',
            'from' => {
              'key_code' => 'japanese_eisuu',
            },
            'to' => [
              {
                'key_code' => 'japanese_kana',
              },
            ],
          },
        ],
      },
      {
        'description' => '右コマンドキーを単体で押したときに、かなキーを送信、左コントロールキーを単体で押したときに、英数キーを送信する。',
        'manipulators' => [
          {
            'type' => 'basic',
            'from' => {
              'key_code' => 'left_control',
              'modifiers' => Karabiner.from_modifiers,
            },
            'to' => [
              {
                'key_code' => 'left_control',
              },
            ],
            'to_if_alone' => [
              {
                'key_code' => 'japanese_eisuu',
              },
            ],
          },
          {
            'type' => 'basic',
            'from' => {
              'key_code' => 'right_command',
              'modifiers' => Karabiner.from_modifiers,
            },
            'to' => [
              {
                'key_code' => 'right_command',
              },
            ],
            'to_if_alone' => [
              {
                'key_code' => 'japanese_kana',
              },
            ],
          },
        ],
      },
    ]
  )
end

main
