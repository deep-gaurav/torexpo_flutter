// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:http/http.dart';
import 'package:torexpo_flutter/artemis_upload.dart';
part 'graphql_api.graphql.g.dart';

mixin TorrentFragmentMixin {
  late int id;
  late String name;
  @JsonKey(unknownEnumValue: TorrentState.artemisUnknown)
  late TorrentState state;
  late TorrentFragmentMixin$TorrentInfo info;
  late TorrentFragmentMixin$TorrentStats stats;
}
mixin TorrentInfoFragmentMixin {
  late DateTime dateCreated;
  late int totalSize;
  late List<TorrentInfoFragmentMixin$TorrentFile> files;
}
mixin TorrentFileFragmentMixin {
  late String name;
  late int length;
  String? downloadLink;
}
mixin TorrentStatsFragmentMixin {
  late double percentDone;
  late double percentComplete;
  @JsonKey(unknownEnumValue: TorrentError.artemisUnknown)
  late TorrentError error;
  late String errorString;
  late int peersConnected;
  late int downloadedEver;
  late int uploadedEver;
  late int sizeWhenDone;
  late bool isStalled;
  late bool finished;
  late int eta;
}

@JsonSerializable(explicitToJson: true)
class AddMagnetLink$MutationRoot extends JsonSerializable with EquatableMixin {
  AddMagnetLink$MutationRoot();

  factory AddMagnetLink$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$AddMagnetLink$MutationRootFromJson(json);

  late int addMagnetLink;

  @override
  List<Object?> get props => [addMagnetLink];
  @override
  Map<String, dynamic> toJson() => _$AddMagnetLink$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddTorrentFile$MutationRoot extends JsonSerializable with EquatableMixin {
  AddTorrentFile$MutationRoot();

  factory AddTorrentFile$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$AddTorrentFile$MutationRootFromJson(json);

  late int addTorrentFile;

  @override
  List<Object?> get props => [addTorrentFile];
  @override
  Map<String, dynamic> toJson() => _$AddTorrentFile$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Start$MutationRoot extends JsonSerializable with EquatableMixin {
  Start$MutationRoot();

  factory Start$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$Start$MutationRootFromJson(json);

  late String start;

  @override
  List<Object?> get props => [start];
  @override
  Map<String, dynamic> toJson() => _$Start$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Stop$MutationRoot extends JsonSerializable with EquatableMixin {
  Stop$MutationRoot();

  factory Stop$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$Stop$MutationRootFromJson(json);

  late String stop;

  @override
  List<Object?> get props => [stop];
  @override
  Map<String, dynamic> toJson() => _$Stop$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Remove$MutationRoot extends JsonSerializable with EquatableMixin {
  Remove$MutationRoot();

  factory Remove$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$Remove$MutationRootFromJson(json);

  late String remove;

  @override
  List<Object?> get props => [remove];
  @override
  Map<String, dynamic> toJson() => _$Remove$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Torrents$QueryRoot$Torrent extends JsonSerializable
    with EquatableMixin, TorrentFragmentMixin {
  Torrents$QueryRoot$Torrent();

  factory Torrents$QueryRoot$Torrent.fromJson(Map<String, dynamic> json) =>
      _$Torrents$QueryRoot$TorrentFromJson(json);

  @override
  List<Object?> get props => [id, name, state, info, stats];
  @override
  Map<String, dynamic> toJson() => _$Torrents$QueryRoot$TorrentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Torrents$QueryRoot extends JsonSerializable with EquatableMixin {
  Torrents$QueryRoot();

  factory Torrents$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$Torrents$QueryRootFromJson(json);

  late List<Torrents$QueryRoot$Torrent> torrents;

  @override
  List<Object?> get props => [torrents];
  @override
  Map<String, dynamic> toJson() => _$Torrents$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TorrentFragmentMixin$TorrentInfo extends JsonSerializable
    with EquatableMixin, TorrentInfoFragmentMixin {
  TorrentFragmentMixin$TorrentInfo();

  factory TorrentFragmentMixin$TorrentInfo.fromJson(
          Map<String, dynamic> json) =>
      _$TorrentFragmentMixin$TorrentInfoFromJson(json);

  @override
  List<Object?> get props => [dateCreated, totalSize, files];
  @override
  Map<String, dynamic> toJson() =>
      _$TorrentFragmentMixin$TorrentInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TorrentFragmentMixin$TorrentStats extends JsonSerializable
    with EquatableMixin, TorrentStatsFragmentMixin {
  TorrentFragmentMixin$TorrentStats();

  factory TorrentFragmentMixin$TorrentStats.fromJson(
          Map<String, dynamic> json) =>
      _$TorrentFragmentMixin$TorrentStatsFromJson(json);

  @override
  List<Object?> get props => [
        percentDone,
        percentComplete,
        error,
        errorString,
        peersConnected,
        downloadedEver,
        uploadedEver,
        sizeWhenDone,
        isStalled,
        finished,
        eta
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$TorrentFragmentMixin$TorrentStatsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TorrentInfoFragmentMixin$TorrentFile extends JsonSerializable
    with EquatableMixin, TorrentFileFragmentMixin {
  TorrentInfoFragmentMixin$TorrentFile();

  factory TorrentInfoFragmentMixin$TorrentFile.fromJson(
          Map<String, dynamic> json) =>
      _$TorrentInfoFragmentMixin$TorrentFileFromJson(json);

  @override
  List<Object?> get props => [name, length, downloadLink];
  @override
  Map<String, dynamic> toJson() =>
      _$TorrentInfoFragmentMixin$TorrentFileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TorrentSubscription$SubscriptionRoot$Torrent extends JsonSerializable
    with EquatableMixin, TorrentFragmentMixin {
  TorrentSubscription$SubscriptionRoot$Torrent();

  factory TorrentSubscription$SubscriptionRoot$Torrent.fromJson(
          Map<String, dynamic> json) =>
      _$TorrentSubscription$SubscriptionRoot$TorrentFromJson(json);

  @override
  List<Object?> get props => [id, name, state, info, stats];
  @override
  Map<String, dynamic> toJson() =>
      _$TorrentSubscription$SubscriptionRoot$TorrentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TorrentSubscription$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  TorrentSubscription$SubscriptionRoot();

  factory TorrentSubscription$SubscriptionRoot.fromJson(
          Map<String, dynamic> json) =>
      _$TorrentSubscription$SubscriptionRootFromJson(json);

  late TorrentSubscription$SubscriptionRoot$Torrent monitorTorrent;

  @override
  List<Object?> get props => [monitorTorrent];
  @override
  Map<String, dynamic> toJson() =>
      _$TorrentSubscription$SubscriptionRootToJson(this);
}

enum TorrentState {
  @JsonValue('DOWNLOADING')
  downloading,
  @JsonValue('DOWNLOADING_WAIT')
  downloadingWait,
  @JsonValue('SEEDING')
  seeding,
  @JsonValue('SEEDING_WAIT')
  seedingWait,
  @JsonValue('STOPPED')
  stopped,
  @JsonValue('CHECKING')
  checking,
  @JsonValue('CHECKING_WAIT')
  checkingWait,
  @JsonValue('ERROR')
  error,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum TorrentError {
  @JsonValue('NO_ERROR')
  noError,
  @JsonValue('UNKNOWN')
  unknown,
  @JsonValue('IO_ERROR')
  ioError,
  @JsonValue('PARSE_ERR')
  parseErr,
  @JsonValue('PARSE_DUPLICATE')
  parseDuplicate,
  @JsonValue('STAT_LOCAL')
  statLocal,
  @JsonValue('STAT_TRACKER')
  statTracker,
  @JsonValue('STAT_TRACKER_WARN')
  statTrackerWarn,
  @JsonValue('MAKE_META_URL')
  makeMetaUrl,
  @JsonValue('MAKE_META_CANCELLED')
  makeMetaCancelled,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class AddMagnetLinkArguments extends JsonSerializable with EquatableMixin {
  AddMagnetLinkArguments({required this.magnetLink});

  @override
  factory AddMagnetLinkArguments.fromJson(Map<String, dynamic> json) =>
      _$AddMagnetLinkArgumentsFromJson(json);

  late String magnetLink;

  @override
  List<Object?> get props => [magnetLink];
  @override
  Map<String, dynamic> toJson() => _$AddMagnetLinkArgumentsToJson(this);
}

final ADD_MAGNET_LINK_MUTATION_DOCUMENT_OPERATION_NAME = 'addMagnetLink';
final ADD_MAGNET_LINK_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'addMagnetLink'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'magnetLink')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addMagnetLink'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'magnetLink'),
                  value: VariableNode(name: NameNode(value: 'magnetLink')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class AddMagnetLinkMutation
    extends GraphQLQuery<AddMagnetLink$MutationRoot, AddMagnetLinkArguments> {
  AddMagnetLinkMutation({required this.variables});

  @override
  final DocumentNode document = ADD_MAGNET_LINK_MUTATION_DOCUMENT;

  @override
  final String operationName = ADD_MAGNET_LINK_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AddMagnetLinkArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddMagnetLink$MutationRoot parse(Map<String, dynamic> json) =>
      AddMagnetLink$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AddTorrentFileArguments extends JsonSerializable with EquatableMixin {
  AddTorrentFileArguments({required this.torrentFile});

  @override
  factory AddTorrentFileArguments.fromJson(Map<String, dynamic> json) =>
      _$AddTorrentFileArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUploadToDartMultipartFile,
      toJson: fromDartMultipartFileToGraphQLUpload)
  late MultipartFile torrentFile;

  @override
  List<Object?> get props => [torrentFile];
  @override
  Map<String, dynamic> toJson() => _$AddTorrentFileArgumentsToJson(this);
}

final ADD_TORRENT_FILE_MUTATION_DOCUMENT_OPERATION_NAME = 'addTorrentFile';
final ADD_TORRENT_FILE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'addTorrentFile'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'torrentFile')),
            type:
                NamedTypeNode(name: NameNode(value: 'Upload'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addTorrentFile'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'torrent'),
                  value: VariableNode(name: NameNode(value: 'torrentFile')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class AddTorrentFileMutation
    extends GraphQLQuery<AddTorrentFile$MutationRoot, AddTorrentFileArguments> {
  AddTorrentFileMutation({required this.variables});

  @override
  final DocumentNode document = ADD_TORRENT_FILE_MUTATION_DOCUMENT;

  @override
  final String operationName =
      ADD_TORRENT_FILE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AddTorrentFileArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddTorrentFile$MutationRoot parse(Map<String, dynamic> json) =>
      AddTorrentFile$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class StartArguments extends JsonSerializable with EquatableMixin {
  StartArguments({required this.torrentId});

  @override
  factory StartArguments.fromJson(Map<String, dynamic> json) =>
      _$StartArgumentsFromJson(json);

  late int torrentId;

  @override
  List<Object?> get props => [torrentId];
  @override
  Map<String, dynamic> toJson() => _$StartArgumentsToJson(this);
}

final START_MUTATION_DOCUMENT_OPERATION_NAME = 'start';
final START_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'start'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'torrentId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'start'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'torrentId'),
                  value: VariableNode(name: NameNode(value: 'torrentId')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class StartMutation extends GraphQLQuery<Start$MutationRoot, StartArguments> {
  StartMutation({required this.variables});

  @override
  final DocumentNode document = START_MUTATION_DOCUMENT;

  @override
  final String operationName = START_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final StartArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Start$MutationRoot parse(Map<String, dynamic> json) =>
      Start$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class StopArguments extends JsonSerializable with EquatableMixin {
  StopArguments({required this.torrentId});

  @override
  factory StopArguments.fromJson(Map<String, dynamic> json) =>
      _$StopArgumentsFromJson(json);

  late int torrentId;

  @override
  List<Object?> get props => [torrentId];
  @override
  Map<String, dynamic> toJson() => _$StopArgumentsToJson(this);
}

final STOP_MUTATION_DOCUMENT_OPERATION_NAME = 'stop';
final STOP_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'stop'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'torrentId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'stop'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'torrentId'),
                  value: VariableNode(name: NameNode(value: 'torrentId')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class StopMutation extends GraphQLQuery<Stop$MutationRoot, StopArguments> {
  StopMutation({required this.variables});

  @override
  final DocumentNode document = STOP_MUTATION_DOCUMENT;

  @override
  final String operationName = STOP_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final StopArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Stop$MutationRoot parse(Map<String, dynamic> json) =>
      Stop$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RemoveArguments extends JsonSerializable with EquatableMixin {
  RemoveArguments({required this.torrentId});

  @override
  factory RemoveArguments.fromJson(Map<String, dynamic> json) =>
      _$RemoveArgumentsFromJson(json);

  late int torrentId;

  @override
  List<Object?> get props => [torrentId];
  @override
  Map<String, dynamic> toJson() => _$RemoveArgumentsToJson(this);
}

final REMOVE_MUTATION_DOCUMENT_OPERATION_NAME = 'remove';
final REMOVE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'remove'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'torrentId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'remove'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'torrentId'),
                  value: VariableNode(name: NameNode(value: 'torrentId')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class RemoveMutation
    extends GraphQLQuery<Remove$MutationRoot, RemoveArguments> {
  RemoveMutation({required this.variables});

  @override
  final DocumentNode document = REMOVE_MUTATION_DOCUMENT;

  @override
  final String operationName = REMOVE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final RemoveArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Remove$MutationRoot parse(Map<String, dynamic> json) =>
      Remove$MutationRoot.fromJson(json);
}

final TORRENTS_QUERY_DOCUMENT_OPERATION_NAME = 'torrents';
final TORRENTS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'torrents'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'torrents'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'TorrentFragment'), directives: [])
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'TorrentFragment'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'Torrent'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'state'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'info'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'TorrentInfoFragment'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'stats'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'TorrentStatsFragment'), directives: [])
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'TorrentInfoFragment'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'TorrentInfo'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'dateCreated'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'totalSize'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'files'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'TorrentFileFragment'), directives: [])
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'TorrentFileFragment'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'TorrentFile'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'length'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'downloadLink'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'TorrentStatsFragment'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'TorrentStats'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'percentDone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'percentComplete'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'error'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'errorString'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'peersConnected'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'downloadedEver'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'uploadedEver'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'sizeWhenDone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'isStalled'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'finished'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'eta'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class TorrentsQuery extends GraphQLQuery<Torrents$QueryRoot, JsonSerializable> {
  TorrentsQuery();

  @override
  final DocumentNode document = TORRENTS_QUERY_DOCUMENT;

  @override
  final String operationName = TORRENTS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Torrents$QueryRoot parse(Map<String, dynamic> json) =>
      Torrents$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class TorrentSubscriptionArguments extends JsonSerializable
    with EquatableMixin {
  TorrentSubscriptionArguments({required this.torrentId});

  @override
  factory TorrentSubscriptionArguments.fromJson(Map<String, dynamic> json) =>
      _$TorrentSubscriptionArgumentsFromJson(json);

  late int torrentId;

  @override
  List<Object?> get props => [torrentId];
  @override
  Map<String, dynamic> toJson() => _$TorrentSubscriptionArgumentsToJson(this);
}

final TORRENT_SUBSCRIPTION_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'torrentSubscription';
final TORRENT_SUBSCRIPTION_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'torrentSubscription'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'torrentId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'monitorTorrent'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'torrentId'),
                  value: VariableNode(name: NameNode(value: 'torrentId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'TorrentFragment'), directives: [])
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'TorrentFragment'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'Torrent'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'state'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'info'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'TorrentInfoFragment'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: 'stats'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'TorrentStatsFragment'), directives: [])
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'TorrentInfoFragment'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'TorrentInfo'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'dateCreated'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'totalSize'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'files'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'TorrentFileFragment'), directives: [])
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'TorrentFileFragment'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'TorrentFile'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'length'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'downloadLink'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'TorrentStatsFragment'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'TorrentStats'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'percentDone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'percentComplete'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'error'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'errorString'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'peersConnected'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'downloadedEver'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'uploadedEver'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'sizeWhenDone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'isStalled'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'finished'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'eta'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class TorrentSubscriptionSubscription extends GraphQLQuery<
    TorrentSubscription$SubscriptionRoot, TorrentSubscriptionArguments> {
  TorrentSubscriptionSubscription({required this.variables});

  @override
  final DocumentNode document = TORRENT_SUBSCRIPTION_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      TORRENT_SUBSCRIPTION_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final TorrentSubscriptionArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  TorrentSubscription$SubscriptionRoot parse(Map<String, dynamic> json) =>
      TorrentSubscription$SubscriptionRoot.fromJson(json);
}
