// メモリ上に1つだけ持つ
import 'package:cake_poker/src/types/cakepoker_record.dart';

CakepokerRecord? cachedRecord;

class RecordRepository {
  /// Record をロードする
  CakepokerRecord loadRecord() {
    return cachedRecord!;
  }

  /// Record をセーブする
  saveRecord(CakepokerRecord record) {
    cachedRecord = record;
  }
}
