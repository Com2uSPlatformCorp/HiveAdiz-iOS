# 이미 podspec에 작성되어있는 버전
PRE_ADIZ_VERSION="2.1.1-beta1"
PRE_ADMOB_VERSION="11.6.0"
PRE_ADMOBUMP_VERSION="2.6.0"    # 2.1.0 인데 겹쳐서 현재 버전으로 변경
PRE_APPLOVIN_VERSION="12.5.0.0"
PRE_PANGLE_VERSION="6.0.0.6.0"
PRE_UNITYADS_VERSION="4.12.0.0"
PRE_META_VERSION="6.15.1.0"
PRE_LIFTOFF_VERSION="7.4.2.0"

# 신규로 podspec에 작성할 버전
UPDATE_ADIZ_VERSION="2.1.1"
UPDATE_ADMOB_VERSION="11.10.0"
UPDATE_ADMOBUMP_VERSION="2.6.0"
UPDATE_APPLOVIN_VERSION="13.0.0.1"
UPDATE_PANGLE_VERSION="6.2.0.9.0"
UPDATE_UNITYADS_VERSION="4.12.3.1"
UPDATE_META_VERSION="6.15.2.1"
UPDATE_LIFTOFF_VERSION="7.4.2.0"

# 버전 텍스트 교체
sed -i '' "s/$PRE_ADIZ_VERSION/$UPDATE_ADIZ_VERSION/" *.podspec

sed -i '' "s/$PRE_ADMOB_VERSION/$UPDATE_ADMOB_VERSION/" HiveAdiz.podspec
sed -i '' "s/$PRE_ADMOBUMP_VERSION/$UPDATE_ADMOBUMP_VERSION/" HiveAdiz.podspec
sed -i '' "s/$PRE_APPLOVIN_VERSION/$UPDATE_APPLOVIN_VERSION/" HiveAdizAdapterAppLovin.podspec
sed -i '' "s/$PRE_PANGLE_VERSION/$UPDATE_PANGLE_VERSION/" HiveAdizAdapterPangle.podspec
sed -i '' "s/$PRE_UNITYADS_VERSION/$UPDATE_UNITYADS_VERSION/" HiveAdizAdapterUnityAds.podspec
sed -i '' "s/$PRE_META_VERSION/$UPDATE_META_VERSION/" HiveAdizAdapterMeta.podspec
sed -i '' "s/$PRE_LIFTOFF_VERSION/$UPDATE_LIFTOFF_VERSION/" HiveAdizAdapterLiftoff.podspec
