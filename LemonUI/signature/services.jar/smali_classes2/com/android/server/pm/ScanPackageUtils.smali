.class public abstract Lcom/android/server/pm/ScanPackageUtils;
.super Ljava/lang/Object;
.source "qb/109710345 eebc2953bcd731c3a7c80d874a4870b868f9481fefa5dc9e0d8d6610d5394652"


# direct methods
.method public static apkHasCode(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/util/jar/StrictJarFile;

    invoke-direct {v2, p0, v0, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo p0, "classes.dex"

    invoke-virtual {v2, p0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_1
    throw p0

    :catch_3
    :goto_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_2
    return v0
.end method

.method public static applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Ljava/lang/String;)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, v2, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v3, :cond_2

    check-cast v3, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V
    .locals 5

    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSystem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isDirectBootAware()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_0
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setStub(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move v0, p3

    :goto_0
    const/high16 v3, 0x20000

    and-int/2addr v3, p1

    if-nez v3, :cond_3

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_3
    const/high16 v4, 0x4000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    invoke-interface {p0, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setApex(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    invoke-interface {p0, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x40000

    and-int/2addr v4, p1

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setOem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x80000

    and-int/2addr v4, p1

    if-eqz v4, :cond_7

    move v4, v2

    goto :goto_4

    :cond_7
    move v4, v1

    :goto_4
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVendor(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_5

    :cond_8
    move v4, v1

    :goto_5
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setProduct(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x200000

    and-int/2addr v4, p1

    if-eqz v4, :cond_9

    move v4, v2

    goto :goto_6

    :cond_9
    move v4, v1

    :goto_6
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x400000

    and-int/2addr p1, v4

    if-eqz p1, :cond_a

    move p1, v2

    goto :goto_7

    :cond_a
    move p1, v1

    :goto_7
    invoke-interface {v3, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setOdm(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    const-string/jumbo p1, "android"

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz p2, :cond_d

    move-object v4, p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/ScanPackageUtils;->signedWithCustomSignature([Landroid/content/pm/Signature;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_c
    :goto_8
    move v1, v2

    :cond_d
    invoke-interface {p0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-nez v0, :cond_e

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_e
    invoke-static {p0, v0, p3}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->modifySharedLibraries(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V

    return-void
.end method

.method public static assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string p2, "Can\'t install because "

    const-string v0, " "

    invoke-static {p2, p3, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'s process attribute "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (in package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is not included in the <processes> list"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, -0x7a

    invoke-direct {p1, p2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public static assertProcessesAreValid(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 3

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "activity"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "service"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "receiver"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "provider"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t install because application tag\'s process attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is not included in the <processes> list"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, -0x7a

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static assertStaticSharedLibraryIsValid(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    and-int/lit16 p1, p1, 0x2000

    if-nez p1, :cond_c

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string/jumbo p0, "Static shared libs cannot be overlay targets"

    const/16 p1, -0x23

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_1
    const-string/jumbo p0, "Static shared libs cannot declare protected broadcasts"

    const/16 p1, -0x22

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_2
    const-string/jumbo p0, "Static shared libs cannot declare permissions"

    const/16 p1, -0x21

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_3
    const-string/jumbo p0, "Static shared libs cannot declare features"

    const/16 p1, -0x20

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_4
    const-string/jumbo p0, "Static shared libs cannot declare permission groups"

    const/16 p1, -0x1f

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_5
    const-string/jumbo p0, "Static shared libs cannot declare broadcast receivers"

    const/16 p1, -0x1e

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_6
    const-string/jumbo p0, "Static shared libs cannot declare content providers"

    const/16 p1, -0x1d

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_7
    const-string/jumbo p0, "Static shared libs cannot declare services"

    const/16 p1, -0x1c

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_8
    const-string/jumbo p0, "Static shared libs cannot declare activities"

    const/16 p1, -0x1b

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_9
    const-string/jumbo p0, "Packages declaring static-shared libs cannot declare shared users"

    const/16 p1, -0x1a

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_a
    const-string/jumbo p0, "Packages declaring static-shared libs cannot declare dynamic libs"

    const/16 p1, -0x19

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_b
    const-string/jumbo p0, "Packages declaring static-shared libs cannot be renamed"

    const/16 p1, -0x18

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_c
    const-string/jumbo p0, "Packages declaring static-shared libs cannot be instant apps"

    const/16 p1, -0x17

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_d
    const-string/jumbo p0, "Packages declaring static-shared libs must target O SDK or higher"

    const/16 p1, -0x16

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0
.end method

.method public static collectCertificatesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/Settings$VersionInfo;ZZZ)V
    .locals 4

    if-eqz p5, :cond_0

    new-instance p5, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->getLastModifiedTime(Lcom/android/server/pm/pkg/AndroidPackage;)J

    move-result-wide v0

    :goto_0
    const-string/jumbo p5, "PackageManager"

    if-eqz p0, :cond_4

    if-nez p3, :cond_4

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z

    iget p2, p2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ge p2, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p2, p2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p2, p2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p2

    array-length p2, p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p2, p2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Landroid/content/pm/SigningDetails;

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {p2, p0}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    invoke-interface {p1, p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    return-void

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "PackageSetting for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const-string p3, " is missing signatures.  Collecting certs again to recover them."

    invoke-static {p2, p0, p3, p5}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " changed; collecting certs"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_5

    const-string p2, " (forced)"

    goto :goto_2

    :cond_5
    const-string p2, ""

    :goto_2
    invoke-static {p0, p2, p5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-wide/32 p2, 0x40000

    :try_start_0
    const-string/jumbo p0, "collectCertificates"

    invoke-static {p2, p3, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object p0

    invoke-static {p0, p1, p4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p4

    if-nez p4, :cond_6

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SigningDetails;

    invoke-interface {p1, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_6
    :try_start_1
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p4

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, p4, p5, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public static getVendorPartitionVersion()I
    .locals 2

    const-string/jumbo v0, "ro.vndk.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    sget-object v1, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    return v0

    :cond_0
    const/16 v0, 0x1c

    return v0
.end method

.method public static scanPackageOnly(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;
    .locals 75
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelperImpl;

    iget-object v6, v1, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v0, v1, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v7, v1, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v8, v1, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v9, v1, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget v11, v1, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    iget v12, v1, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    iget-object v15, v1, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    iget-object v13, v1, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    iget-object v14, v1, Lcom/android/server/pm/ScanRequest;->mUser:Landroid/os/UserHandle;

    move/from16 v20, v11

    iget-boolean v11, v1, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    move-object/from16 v21, v5

    new-instance v5, Ljava/io/File;

    move/from16 v22, v11

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    and-int/lit16 v11, v12, 0x1000

    move/from16 v16, v11

    if-eqz v16, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    const/high16 v17, 0x4000000

    and-int v24, v12, v17

    if-eqz v24, :cond_1

    const/16 v25, 0x1

    :goto_1
    const/16 v26, 0x1

    goto :goto_2

    :cond_1
    const/16 v25, 0x0

    goto :goto_1

    :goto_2
    if-nez v16, :cond_4

    if-eqz v0, :cond_2

    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v11, :cond_3

    invoke-interface {v11}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStub()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    move/from16 v27, v26

    :goto_3
    const/4 v3, 0x0

    const/4 v11, 0x0

    goto :goto_4

    :cond_3
    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    move-object/from16 v17, v11

    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    move-object v3, v11

    move/from16 v27, v16

    move-object/from16 v11, v17

    goto :goto_4

    :cond_4
    move/from16 v27, v16

    goto :goto_3

    :goto_4
    const-string v4, " shared user changed from "

    move-object/from16 v16, v14

    const-string/jumbo v14, "Package "

    move-object/from16 v28, v3

    const-string v3, " to "

    const-string v17, "<nothing>"

    move-object/from16 v30, v11

    if-eqz v0, :cond_7

    if-eq v10, v13, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v15

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_5

    iget-object v15, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v15, v17

    :goto_5
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_6

    iget-object v15, v13, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :goto_6
    move-object/from16 v19, v13

    goto :goto_7

    :cond_6
    move-object/from16 v15, v17

    goto :goto_6

    :goto_7
    const-string v13, "; replacing with new"

    invoke-static {v11, v15, v13}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v13, 0x5

    invoke-static {v13, v11}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    const/16 v11, 0x10

    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v0

    move v11, v0

    const/4 v0, 0x0

    goto :goto_8

    :cond_7
    move-object/from16 v19, v13

    move-object/from16 v18, v15

    const/4 v11, 0x0

    :goto_8
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_9

    :cond_8
    const/4 v13, 0x0

    :goto_9
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/String;

    move/from16 v31, v11

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v11, v15

    goto :goto_a

    :cond_9
    move/from16 v31, v11

    const/4 v11, 0x0

    :goto_a
    iget-object v15, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v15, v2, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    check-cast v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    if-nez v0, :cond_a

    move/from16 v32, v26

    goto :goto_b

    :cond_a
    const/16 v32, 0x0

    :goto_b
    const-string v2, " package "

    const-string v33, " system"

    move-object/from16 v34, v9

    const-string/jumbo v9, "Update"

    move-object/from16 v35, v2

    const-string v2, ""

    move-object/from16 v36, v2

    const-string/jumbo v2, "PackageManager"

    if-eqz v32, :cond_20

    and-int/lit16 v0, v12, 0x2000

    if-eqz v0, :cond_b

    move/from16 v51, v26

    goto :goto_c

    :cond_b
    const/16 v51, 0x0

    :goto_c
    const v0, 0x8000

    and-int/2addr v0, v12

    if-eqz v0, :cond_c

    move/from16 v52, v26

    goto :goto_d

    :cond_c
    const/16 v52, 0x0

    :goto_d
    const/high16 v0, 0x8000000

    and-int/2addr v0, v12

    if-eqz v0, :cond_d

    move/from16 v0, v26

    :goto_e
    const/4 v4, 0x0

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    :goto_f
    invoke-static {v4, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v10

    invoke-static {v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v4

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move/from16 v38, v0

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v6

    check-cast v17, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    move-object/from16 v64, v2

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v65, v9

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v66, v6

    move-object/from16 v67, v7

    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v6

    move-object/from16 v68, v3

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    move/from16 v69, v12

    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v12

    move-object/from16 v70, v3

    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesOptional()[Z

    move-result-object v3

    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v15

    move/from16 v17, v4

    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMimeGroups()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v40, v4

    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v4

    move/from16 v41, v10

    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRestrictUpdateHash()[B

    move-result-object v10

    if-eqz v8, :cond_e

    move-object/from16 v42, v10

    new-instance v10, Lcom/android/server/pm/PackageSetting;

    move/from16 v43, v4

    const/4 v4, 0x0

    invoke-direct {v10, v8, v4}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    iput-object v14, v10, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    invoke-virtual {v10, v5}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v2, v4, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v9, v4, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-wide v6, v4, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v13, v4, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v12, v4, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v3, v4, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v11, v4, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v15, v4, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v1, v4, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move/from16 v10, v43

    iput v10, v4, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move-object/from16 v0, v42

    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move/from16 v0, v41

    iput v0, v4, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    move-object/from16 v71, v8

    move-object/from16 v72, v16

    move-object/from16 v5, v19

    move-object/from16 v3, v67

    const/16 v1, 0x8

    goto/16 :goto_1b

    :cond_e
    move-object/from16 v74, v10

    move v10, v4

    move-object/from16 v4, v74

    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v42

    move/from16 v43, v42

    move-object/from16 v42, v1

    move/from16 v1, v43

    :goto_10
    move-object/from16 v43, v13

    goto :goto_11

    :cond_f
    move-object/from16 v42, v1

    const/4 v1, 0x0

    goto :goto_10

    :goto_11
    new-instance v13, Lcom/android/server/pm/PackageSetting;

    move/from16 v73, v1

    move-object/from16 v71, v8

    move-object v1, v15

    move-object/from16 v72, v16

    move-object/from16 v15, v18

    move-object/from16 v8, v43

    move-object/from16 v16, v5

    move/from16 v18, v17

    move-object/from16 v5, v19

    move/from16 v17, v41

    move-object/from16 v19, v42

    invoke-direct/range {v13 .. v19}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    move-object v14, v13

    move-object/from16 v13, v16

    iput-object v8, v14, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    invoke-virtual {v14}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v12, v14, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {v14}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v3, v14, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    invoke-virtual {v14}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v11, v14, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-virtual {v14}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v1, v14, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {v14}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v0, v14, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v2, v14, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v9, v14, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-wide v6, v14, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v14}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    if-nez v40, :cond_10

    const/4 v0, 0x0

    goto :goto_12

    :cond_10
    new-instance v0, Lcom/android/server/pm/Settings$KeySetToValueMap;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, v40

    iput-object v2, v0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mKeySet:Ljava/util/Set;

    iput-object v1, v0, Lcom/android/server/pm/Settings$KeySetToValueMap;->mValue:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    :goto_12
    if-eqz v0, :cond_11

    invoke-virtual {v14, v0}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    invoke-virtual {v14}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_11
    iput v10, v14, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    invoke-virtual {v14}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v4, v14, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    invoke-virtual {v14}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, v14, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    invoke-virtual {v14}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    if-eqz v5, :cond_12

    iget v0, v5, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v14, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    :cond_12
    and-int/lit8 v0, v41, 0x1

    if-nez v0, :cond_18

    move-object/from16 v0, v70

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    move/from16 v3, v73

    if-eqz v72, :cond_15

    const/4 v4, -0x1

    if-ne v3, v4, :cond_13

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v6, "no_debugging_features"

    invoke-virtual {v0, v6, v4}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_13

    iget-boolean v4, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v4, :cond_15

    :cond_13
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v4, :cond_14

    goto :goto_14

    :cond_14
    const/16 v45, 0x0

    goto :goto_15

    :cond_15
    :goto_14
    move/from16 v45, v26

    :goto_15
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v62, 0x0

    const/16 v63, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v46, 0x1

    const/16 v47, 0x1

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const-wide/16 v60, 0x0

    move/from16 v39, v2

    move-object/from16 v38, v14

    invoke-virtual/range {v38 .. v63}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    move/from16 v73, v3

    goto :goto_13

    :cond_16
    move-object v13, v14

    :cond_17
    const/16 v1, 0x8

    goto :goto_16

    :cond_18
    move-object v13, v14

    move-object/from16 v0, v70

    move/from16 v3, v73

    if-eqz v38, :cond_17

    invoke-virtual {v13, v3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v1

    const/4 v2, 0x2

    move/from16 v3, v26

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v13}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/16 v1, 0x8

    invoke-virtual {v13, v1, v3}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v13}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :goto_16
    if-eqz v5, :cond_19

    iget v0, v5, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    move-object v4, v13

    move-object/from16 v3, v67

    goto/16 :goto_1b

    :cond_19
    if-eqz v67, :cond_1d

    new-instance v2, Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v3, v67

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    if-eqz v4, :cond_1a

    iget-object v6, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v7, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v6, v7, :cond_1a

    new-instance v6, Landroid/content/pm/SigningDetails;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v6, v4}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v6, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_17

    :cond_1a
    sget-object v4, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v4, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :goto_17
    iput-object v2, v13, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v13}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget v2, v3, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    iget-object v2, v13, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    iget-object v4, v3, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v4

    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v6

    if-eqz v4, :cond_1b

    iget-object v4, v4, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    goto :goto_19

    :cond_1b
    const/4 v4, 0x0

    :goto_19
    invoke-virtual {v6, v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)V

    invoke-virtual {v13}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v4

    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v2

    if-eqz v4, :cond_1c

    iget-object v4, v4, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    goto :goto_1a

    :cond_1c
    const/4 v4, 0x0

    :goto_1a
    invoke-virtual {v2, v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)V

    invoke-virtual {v13}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_18

    :cond_1d
    move-object/from16 v3, v67

    :cond_1e
    move-object v4, v13

    :goto_1b
    if-eqz v31, :cond_1f

    const/4 v2, 0x1

    const/16 v11, 0x10

    invoke-virtual {v4, v11, v2}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_1f
    move/from16 v39, v1

    move-object/from16 v67, v3

    move-object v12, v4

    move-object/from16 v42, v5

    move-object/from16 v14, v64

    const/4 v4, 0x0

    goto/16 :goto_28

    :cond_20
    move-object/from16 v64, v2

    move-object/from16 v68, v3

    move-object/from16 v66, v6

    move-object v3, v7

    move-object/from16 v71, v8

    move-object/from16 v65, v9

    move/from16 v69, v12

    move-object v8, v13

    move-object/from16 v72, v16

    move-object v2, v1

    move-object v13, v5

    move-object/from16 v5, v19

    const/16 v1, 0x8

    new-instance v6, Lcom/android/server/pm/PackageSetting;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    move-object/from16 v0, v66

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iput-object v0, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    and-int/lit16 v0, v12, 0x400

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_1c

    :cond_21
    const/4 v0, 0x0

    :goto_1c
    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v15

    move/from16 v39, v1

    move-object/from16 v1, v66

    invoke-static {v6, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v16

    move/from16 v18, v0

    invoke-static {v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v0

    move-object/from16 v67, v3

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    move/from16 v69, v12

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v12

    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesOptional()[Z

    move-result-object v1

    move/from16 v19, v0

    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v0

    move-object/from16 v31, v0

    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMimeGroups()Ljava/util/Set;

    move-result-object v0

    move-object/from16 v38, v11

    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v11

    move-object/from16 v40, v1

    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRestrictUpdateHash()[B

    move-result-object v1

    move-object/from16 v41, v12

    iget-object v12, v6, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    move-object/from16 v43, v8

    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    if-eqz v5, :cond_24

    invoke-static {v10, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_23

    invoke-static {v14, v12, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v10, :cond_22

    iget-object v1, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_1d

    :cond_22
    move-object/from16 v1, v17

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v68

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v13, 0x5

    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v1, "Updating application package "

    const-string v2, " failed"

    invoke-static {v1, v12, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x18

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_23
    move-object/from16 v4, v68

    iget v10, v5, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v6, v10}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    goto :goto_1e

    :cond_24
    move-object/from16 v4, v68

    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    :goto_1e
    invoke-virtual {v8, v13}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2a

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v10

    new-instance v14, Ljava/lang/StringBuilder;

    move/from16 v17, v10

    move-object/from16 v10, v65

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v17, :cond_25

    move-object/from16 v10, v33

    :goto_1f
    move-object/from16 v42, v5

    goto :goto_20

    :cond_25
    move-object/from16 v10, v36

    goto :goto_1f

    :goto_20
    const-string v5, " code path from "

    move-object/from16 v44, v1

    move-object/from16 v1, v35

    invoke-static {v14, v10, v1, v12, v5}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v6, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; Retain data and using new"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v14, v64

    invoke-static {v14, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v17, :cond_29

    and-int/lit8 v5, v16, 0x1

    if-eqz v5, :cond_28

    if-nez v67, :cond_28

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    if-nez v10, :cond_26

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v10

    if-nez v10, :cond_26

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v10

    if-eqz v10, :cond_27

    :cond_26
    move-object/from16 v17, v3

    goto :goto_22

    :cond_27
    iget v10, v5, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v17, v3

    const/4 v3, 0x1

    invoke-virtual {v6, v10, v3}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    iget v3, v5, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v6, v5, v3}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    move-object/from16 v3, v17

    goto :goto_21

    :goto_22
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "User "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v5, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v68, v4

    const-string v4, " is Premium container. do not set install flag. / "

    move-object/from16 v35, v1

    const-string v1, " / installed = "

    invoke-static {v10, v4, v12, v1, v3}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v1}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v17

    move-object/from16 v1, v35

    move-object/from16 v4, v68

    goto :goto_21

    :cond_28
    move-object/from16 v35, v1

    move-object/from16 v68, v4

    iput-object v7, v6, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_23

    :cond_29
    move-object/from16 v35, v1

    move-object/from16 v68, v4

    :goto_23
    invoke-virtual {v6, v13}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    if-eqz v18, :cond_2b

    invoke-virtual {v6, v8}, Lcom/android/server/pm/PackageSetting;->addOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    goto :goto_24

    :cond_2a
    move-object/from16 v44, v1

    move-object/from16 v68, v4

    move-object/from16 v42, v5

    move-object/from16 v14, v64

    :cond_2b
    :goto_24
    iput-object v9, v6, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v15, v6, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v6, v0}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)V

    iput-object v2, v6, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput v11, v6, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move-object/from16 v0, v44

    iput-object v0, v6, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    if-eqz v43, :cond_2c

    if-eqz v41, :cond_2c

    if-eqz v40, :cond_2c

    move-object/from16 v8, v43

    array-length v0, v8

    move-object/from16 v1, v41

    array-length v2, v1

    if-ne v0, v2, :cond_2c

    array-length v0, v8

    move-object/from16 v2, v40

    array-length v3, v2

    if-ne v0, v3, :cond_2c

    iput-object v8, v6, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v1, v6, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v2, v6, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_25

    :cond_2c
    const/4 v4, 0x0

    iput-object v4, v6, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v4, v6, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v4, v6, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :goto_25
    if-eqz v38, :cond_2d

    if-eqz v31, :cond_2d

    move-object/from16 v15, v38

    array-length v0, v15

    move-object/from16 v1, v31

    array-length v2, v1

    if-ne v0, v2, :cond_2d

    iput-object v15, v6, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v1, v6, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/4 v4, 0x0

    goto :goto_26

    :cond_2d
    const/4 v4, 0x0

    iput-object v4, v6, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v4, v6, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :goto_26
    iget v0, v6, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    and-int/lit8 v0, v0, -0x2

    const/16 v26, 0x1

    and-int/lit8 v1, v16, 0x1

    or-int/2addr v0, v1

    iput v0, v6, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget v0, v6, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2e

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x200

    goto :goto_27

    :cond_2e
    move/from16 v0, v19

    and-int/lit16 v0, v0, -0x201

    :goto_27
    invoke-virtual {v6, v0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    move-object v12, v6

    :goto_28
    iget-object v1, v12, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    const-string/jumbo v2, "PersonaServiceHelper"

    and-int/lit8 v3, v69, 0x4

    if-eqz v3, :cond_2f

    const/4 v5, 0x1

    goto :goto_29

    :cond_2f
    const/4 v5, 0x0

    :goto_29
    and-int/lit8 v0, v69, 0x10

    if-eqz v0, :cond_30

    const/4 v6, 0x1

    goto :goto_2a

    :cond_30
    const/4 v6, 0x0

    :goto_2a
    if-eqz v24, :cond_32

    :cond_31
    move-object/from16 v15, v36

    goto/16 :goto_37

    :cond_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2b

    :catchall_0
    move-exception v0

    goto/16 :goto_53

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v9, "user manager exception "

    invoke-static {v2, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v4

    :goto_2b
    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Landroid/content/pm/UserInfo;

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_34

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v7

    if-nez v7, :cond_34

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_33

    goto :goto_2d

    :cond_33
    move-object/from16 v9, v34

    move-object/from16 v15, v36

    move-object/from16 v8, v72

    goto/16 :goto_31

    :cond_34
    :goto_2d
    iget-object v7, v12, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v7, v8, v13}, Lcom/android/server/pm/PersonaServiceHelper;->containsPackage(Ljava/lang/String;ZLandroid/content/pm/UserInfo;)Z

    move-result v7

    if-eqz v7, :cond_35

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v7, v8}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v15, v36

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v12, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is installed in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v8, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_2e

    :cond_35
    move-object/from16 v15, v36

    const/4 v7, 0x0

    :goto_2e
    iget-object v8, v12, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9, v13}, Lcom/android/server/pm/PersonaServiceHelper;->containsPackage(Ljava/lang/String;ZLandroid/content/pm/UserInfo;)Z

    move-result v8

    if-eqz v8, :cond_36

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v7, v9}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v12, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is uninstalled in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v8, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v7, 0x1

    :cond_36
    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_37

    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isOverlayIsStatic()Z

    move-result v8

    if-eqz v8, :cond_37

    const-string/jumbo v8, "android"

    invoke-interface/range {v66 .. v66}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v12, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is (system overlay package) skip trim in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v8, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v7, 0x1

    :cond_37
    if-eqz v7, :cond_38

    move-object/from16 v36, v15

    goto/16 :goto_2c

    :cond_38
    if-eqz v72, :cond_3c

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v8, v72

    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    if-eqz v34, :cond_39

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v9, v34

    invoke-virtual {v9, v7}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_3a

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "if already installed, then don\'t trim it\n set true for persona "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v11, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v7, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    goto/16 :goto_31

    :cond_39
    move-object/from16 v9, v34

    :cond_3a
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "in trim for persona "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " setting false "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v12, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-static {v7, v10, v2}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v10, 0x0

    invoke-virtual {v12, v7, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    goto :goto_31

    :cond_3b
    :goto_2f
    move-object/from16 v9, v34

    goto :goto_30

    :cond_3c
    move-object/from16 v8, v72

    goto :goto_2f

    :goto_30
    if-eqz v5, :cond_3d

    if-nez v8, :cond_3d

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "New installation & target user = null or all\n set false for persona "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v10, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v10, 0x0

    invoke-virtual {v12, v7, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    goto :goto_31

    :cond_3d
    if-eqz v6, :cond_40

    if-eqz v8, :cond_3e

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v7

    if-eqz v7, :cond_40

    :cond_3e
    if-nez v9, :cond_3f

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "If no info about old packages trim it\n set false for persona "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v10, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v10, 0x0

    invoke-virtual {v12, v7, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    goto :goto_31

    :cond_3f
    const/4 v10, 0x0

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v7}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    const/4 v11, 0x1

    if-eq v7, v11, :cond_40

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "if already not installed, then trim it\n set false for persona "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v11, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v7, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    :cond_40
    :goto_31
    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v7}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    if-nez v7, :cond_41

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_41

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12, v7}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v7

    if-eqz v7, :cond_41

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v11, 0x1

    invoke-virtual {v12, v7, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    :cond_41
    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v7}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    if-nez v7, :cond_42

    if-eqz v9, :cond_42

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_42

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v7}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v7

    if-eqz v7, :cond_42

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v11, 0x1

    invoke-virtual {v12, v7, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    :cond_42
    if-eqz v9, :cond_43

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v7}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    if-eqz v7, :cond_43

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-nez v7, :cond_44

    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_43

    goto :goto_32

    :cond_43
    move-object/from16 v72, v8

    move-object/from16 v34, v9

    const/16 v37, -0x1

    goto :goto_36

    :cond_44
    :goto_32
    iget v7, v13, Landroid/content/pm/UserInfo;->id:I

    move v10, v7

    :try_start_2
    iget-object v7, v12, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v7, :cond_45

    :catch_1
    move-object/from16 v72, v8

    move-object/from16 v34, v9

    move v4, v10

    const/16 v37, -0x1

    goto :goto_33

    :cond_45
    move/from16 v16, v10

    const/4 v11, -0x1

    :try_start_3
    invoke-virtual {v12, v11}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v72, v8

    move-object/from16 v34, v9

    const-wide/16 v8, 0x80

    move/from16 v37, v11

    const/4 v11, -0x1

    move/from16 v4, v16

    :try_start_4
    invoke-static/range {v7 .. v12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-nez v7, :cond_46

    :catch_2
    :goto_33
    const/4 v7, 0x0

    goto :goto_34

    :cond_46
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_34

    :catch_3
    move-object/from16 v72, v8

    move-object/from16 v34, v9

    move/from16 v37, v11

    move/from16 v4, v16

    goto :goto_33

    :goto_34
    if-nez v7, :cond_47

    const/4 v4, 0x0

    goto :goto_35

    :cond_47
    iget-object v8, v12, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-static {v4, v8, v7}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    :goto_35
    if-eqz v4, :cond_48

    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v10, 0x0

    invoke-virtual {v12, v4, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    :cond_48
    :goto_36
    move-object/from16 v36, v15

    const/4 v4, 0x0

    goto/16 :goto_2c

    :goto_37
    if-eqz v32, :cond_49

    if-eqz v71, :cond_49

    move-object/from16 v2, v71

    iget-object v0, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    move-object/from16 v6, v66

    invoke-interface {v6, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "New package "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v12, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " renamed to replace old package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v13, 0x5

    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_38

    :cond_49
    move-object/from16 v6, v66

    :goto_38
    if-nez v72, :cond_4a

    const/4 v4, 0x0

    goto :goto_39

    :cond_4a
    invoke-virtual/range {v72 .. v72}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v4, v0

    :goto_39
    if-nez v32, :cond_4d

    move/from16 v2, v69

    and-int/lit16 v0, v2, 0x2000

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    goto :goto_3a

    :cond_4b
    const/4 v0, 0x0

    :goto_3a
    and-int/lit16 v5, v2, 0x4000

    if-eqz v5, :cond_4c

    const/4 v5, 0x1

    :goto_3b
    move-object/from16 v7, p1

    goto :goto_3c

    :cond_4c
    const/4 v5, 0x0

    goto :goto_3b

    :goto_3c
    invoke-static {v7, v12, v4, v0, v5}, Lcom/android/server/pm/ScanPackageUtils;->setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V

    goto :goto_3d

    :cond_4d
    move-object/from16 v7, p1

    move/from16 v2, v69

    :goto_3d
    if-nez v67, :cond_4e

    if-eqz v3, :cond_4f

    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_4e
    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    iget-object v0, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_4f
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    move-object/from16 v5, v42

    invoke-static {v12, v6, v5, v0}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/compat/PlatformCompat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->seInfo:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_50

    goto/16 :goto_42

    :cond_50
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v5

    const/16 v26, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_3e
    if-ltz v5, :cond_52

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_51

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_51
    add-int/lit8 v5, v5, -0x1

    goto :goto_3e

    :cond_52
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v5

    const/16 v26, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_3f
    if-ltz v5, :cond_54

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_53

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_53
    add-int/lit8 v5, v5, -0x1

    goto :goto_3f

    :cond_54
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v5

    const/16 v26, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_40
    if-ltz v5, :cond_56

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_55

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_55
    add-int/lit8 v5, v5, -0x1

    goto :goto_40

    :cond_56
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v5

    const/16 v26, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_41
    if-ltz v5, :cond_58

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedService;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_57

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_57
    add-int/lit8 v5, v5, -0x1

    goto :goto_41

    :cond_58
    :goto_42
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/pm/ScanRequest;->mCpuAbiOverride:Ljava/lang/String;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    const-string v5, "-"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    const/4 v9, 0x0

    goto :goto_43

    :cond_59
    move-object v9, v0

    :goto_43
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v7

    iget-boolean v8, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "app-lib"

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez v25, :cond_60

    if-nez v3, :cond_5b

    if-eqz v27, :cond_5a

    const-string/jumbo v0, "derivePackageAbi"

    move v1, v3

    move v13, v4

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-wide/from16 v16, v3

    move-object/from16 v5, v21

    move-object/from16 v3, v65

    :try_start_5
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageAbiHelperImpl;->derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v0

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageAbiHelper$Abis;

    move/from16 p1, v1

    iget-object v1, v4, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    invoke-interface {v6, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    iget-object v4, v4, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    move-object v0, v6

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_5e

    if-nez v8, :cond_5e

    if-nez v0, :cond_5e

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageAbiHelperImpl;->getBundledAppAbis(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    invoke-interface {v6, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iput-object v0, v12, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v1, v12, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_45

    :catchall_1
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_5a
    move/from16 p1, v3

    move v13, v4

    move-object/from16 v5, v21

    move-object/from16 v1, v30

    move-object/from16 v3, v65

    invoke-interface {v6, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_45

    :cond_5b
    move/from16 p1, v3

    move v13, v4

    move-object/from16 v5, v21

    move-object/from16 v3, v65

    and-int/lit16 v0, v2, 0x100

    if-eqz v0, :cond_5c

    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-interface {v6, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_44

    :cond_5c
    invoke-static {v6}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageAbiHelperImpl;->derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageAbiHelper$Abis;

    iget-object v4, v1, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    invoke-interface {v6, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v4

    iget-object v1, v1, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    invoke-interface {v4, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    :cond_5d
    :goto_44
    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    :cond_5e
    :goto_45
    if-eqz v22, :cond_61

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    const/16 v23, 0x0

    aget-object v0, v0, v23

    goto :goto_46

    :cond_5f
    const/16 v23, 0x0

    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v23

    :goto_46
    invoke-interface {v6, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_47

    :cond_60
    move/from16 p1, v3

    move v13, v4

    move-object/from16 v5, v21

    move-object/from16 v3, v65

    :cond_61
    :goto_47
    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_62

    if-eqz p1, :cond_62

    if-nez v9, :cond_62

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring persisted ABI override for package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    move-object v0, v6

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v9, v12, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    const-wide/16 v8, 0x4000

    cmp-long v0, v0, v8

    if-nez v0, :cond_63

    const/4 v4, 0x1

    goto :goto_48

    :cond_63
    const/4 v4, 0x0

    :goto_48
    const/4 v10, 0x0

    if-nez v32, :cond_64

    iput v10, v12, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_64
    const/16 v0, 0x40

    if-nez v4, :cond_66

    iget-boolean v1, v11, Lcom/android/server/pm/ScanRequest;->mEnableAlignmentChecks:Z

    if-eqz v1, :cond_65

    goto :goto_49

    :cond_65
    move/from16 v69, v2

    goto/16 :goto_4c

    :cond_66
    :goto_49
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPageSizeAppCompatFlags()I

    move-result v1

    if-lez v1, :cond_67

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPageSizeAppCompatFlags()I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/android/server/pm/PackageSetting;->setPageSizeAppCompatFlags(I)V

    :cond_67
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_65

    if-nez v7, :cond_65

    if-nez v25, :cond_65

    if-nez v22, :cond_65

    iget-object v1, v12, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isNativeLibraryRootRequiresIsa()Z

    move-result v4

    iget-object v8, v12, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_6
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPageSizeAppCompatFlags()I

    move-result v5

    if-ne v5, v0, :cond_68

    const/4 v5, 0x1

    goto :goto_4a

    :cond_68
    move v5, v10

    :goto_4a
    invoke-static {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result v10

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move/from16 v69, v2

    :try_start_7
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v2

    invoke-static {v9, v10, v0, v2, v5}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    invoke-static {v0, v1, v4, v8}, Lcom/android/internal/content/NativeLibraryHelper;->checkAlignmentForCompatMode(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;ZLjava/lang/String;)Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;

    move-result-object v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4b

    :catch_4
    move/from16 v69, v2

    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to check alignment of package : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_4b
    if-eqz v4, :cond_6a

    iget-object v0, v4, Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;->unalignedLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    if-eqz v0, :cond_6a

    iget v0, v4, Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;->flags:I

    if-ltz v0, :cond_6a

    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageSetting;->setPageSizeAppCompatFlags(I)V

    iget-object v0, v4, Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;->unalignedLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    if-nez v0, :cond_69

    const-string v0, "Invalid LibraryAlignmentInfo specified"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :cond_69
    iput-object v0, v12, Lcom/android/server/pm/PackageSetting;->mUnalignedNativeLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_4c

    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occurred while checking alignment of package : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    if-eqz p2, :cond_6b

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "android.permission.FACTORY_TEST"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const/4 v0, 0x1

    goto :goto_4d

    :cond_6b
    const/4 v0, 0x0

    :goto_4d
    invoke-interface {v6, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-eqz v7, :cond_6d

    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-boolean v1, v0, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    const/4 v2, 0x1

    if-ne v2, v1, :cond_6c

    goto :goto_4e

    :cond_6c
    iget-object v1, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget v7, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    iget-object v8, v0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    iget v10, v0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    iget-boolean v2, v0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v42, v0

    move-object/from16 v43, v1

    move/from16 v49, v2

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move/from16 v40, v7

    move-object/from16 v46, v8

    move-object/from16 v47, v9

    move/from16 v41, v10

    const/16 v48, 0x1

    invoke-static/range {v40 .. v49}, Lcom/android/server/pm/InstallSource;->createInternal(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    :goto_4e
    iput-object v0, v12, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_6d
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isDebuggable()Z

    move-result v0

    const/16 v1, 0x20

    invoke-virtual {v12, v1, v0}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseRevisionCode()I

    move-result v0

    iput v0, v12, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->getLastModifiedTime(Lcom/android/server/pm/pkg/AndroidPackage;)J

    move-result-wide v0

    iget-object v2, v12, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v2, p3, v7

    if-eqz v2, :cond_6f

    cmp-long v2, v4, v7

    if-nez v2, :cond_6e

    move-wide/from16 v4, p3

    invoke-virtual {v12, v13, v4, v5}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(IJ)V

    invoke-virtual {v12, v4, v5}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    goto :goto_4f

    :cond_6e
    move-wide/from16 v4, p3

    and-int/lit8 v2, v69, 0x8

    if-eqz v2, :cond_71

    invoke-virtual {v12, v4, v5}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    goto :goto_4f

    :cond_6f
    cmp-long v2, v4, v7

    if-nez v2, :cond_70

    invoke-virtual {v12, v13, v0, v1}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(IJ)V

    invoke-virtual {v12, v0, v1}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    goto :goto_4f

    :cond_70
    const/16 v29, 0x10

    and-int/lit8 v2, v20, 0x10

    if-eqz v2, :cond_71

    iget-wide v4, v12, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_71

    invoke-virtual {v12, v0, v1}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    :cond_71
    :goto_4f
    iput-wide v0, v12, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move-object v0, v6

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iput-object v0, v12, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-static {v12, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v0

    iput v0, v12, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-static {v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v0

    iget-wide v4, v12, Lcom/android/server/pm/PackageSetting;->versionCode:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_72

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v0

    iput-wide v0, v12, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_72
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_73

    move-object/from16 v15, v33

    :cond_73
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v35

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " volume from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v68

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v12, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_74
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v0

    const/16 v1, 0x40

    invoke-virtual {v12, v1, v0}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    new-instance v13, Landroid/content/pm/SharedLibraryInfo;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v16

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v0

    int-to-long v0, v0

    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x3

    const/16 v22, 0x0

    move-wide/from16 v18, v0

    move-object/from16 v21, v2

    invoke-direct/range {v13 .. v24}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    move-object v4, v13

    goto :goto_50

    :cond_75
    const/4 v4, 0x0

    :goto_50
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    new-instance v13, Landroid/content/pm/SharedLibraryInfo;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v16

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v18

    new-instance v0, Landroid/content/pm/VersionedPackage;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x2

    const/16 v22, 0x0

    move-object/from16 v21, v0

    invoke-direct/range {v13 .. v24}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    goto :goto_51

    :cond_76
    const/4 v13, 0x0

    :goto_51
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_77

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/String;

    new-instance v14, Landroid/content/pm/SharedLibraryInfo;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-static {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v17

    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v7

    invoke-direct {v2, v3, v7, v8}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v15, 0x0

    const-wide/16 v19, -0x1

    const/16 v21, 0x1

    const/16 v23, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v14 .. v25}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_77
    const/4 v0, 0x0

    :cond_78
    new-instance v1, Lcom/android/server/pm/ScanResult;

    const/16 v26, 0x1

    xor-int/lit8 v2, v32, 0x1

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v11, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iput-object v12, v1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iput-boolean v2, v1, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    iput-object v4, v1, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    iput-object v13, v1, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    iput-object v0, v1, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    return-object v1

    :goto_53
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public static setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V
    .locals 6

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, -0x1

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v0, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void

    :cond_1
    if-eqz p4, :cond_5

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    array-length p2, p0

    move v0, v2

    :goto_0
    if-ge v0, p2, :cond_5

    aget v4, p0, v0

    if-eqz p3, :cond_3

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public static signedWithCustomSignature([Landroid/content/pm/Signature;)Z
    .locals 2

    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308204a830820390a003020102020900b3998086d056cffa300d06092a864886f70d0101040500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303431353232343035305a170d3335303930313232343035305a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009c780592ac0d5d381cdeaa65ecc8a6006e36480c6d7207b12011be50863aabe2b55d009adf7146d6f2202280c7cd4d7bdb26243b8a806c26b34b137523a49268224904dc01493e7c0acf1a05c874f69b037b60309d9074d24280e16bad2a8734361951eaf72a482d09b204b1875e12ac98c1aa773d6800b9eafde56d58bed8e8da16f9a360099c37a834a6dfedb7b6b44a049e07a269fccf2c5496f2cf36d64df90a3b8d8f34a3baab4cf53371ab27719b3ba58754ad0c53fc14e1db45d51e234fbbe93c9ba4edf9ce54261350ec535607bf69a2ff4aa07db5f7ea200d09a6c1b49e21402f89ed1190893aab5a9180f152e82f85a45753cf5fc19071c5eec827020103a381fc3081f9301d0603551d0e041604144fe4a0b3dd9cba29f71d7287c4e7c38f2086c2993081c90603551d230481c13081be80144fe4a0b3dd9cba29f71d7287c4e7c38f2086c299a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900b3998086d056cffa300c0603551d13040530030101ff300d06092a864886f70d01010405000382010100572551b8d93a1f73de0f6d469f86dad6701400293c88a0cd7cd778b73dafcc197fab76e6212e56c1c761cfc42fd733de52c50ae08814cefc0a3b5a1a4346054d829f1d82b42b2048bf88b5d14929ef85f60edd12d72d55657e22e3e85d04c831d613d19938bb8982247fa321256ba12d1d6a8f92ea1db1c373317ba0c037f0d1aff645aef224979fba6e7a14bc025c71b98138cef3ddfc059617cf24845cf7b40d6382f7275ed738495ab6e5931b9421765c491b72fb68e080dbdb58c2029d347c8b328ce43ef6a8b15533edfbe989bd6a48dd4b202eda94c6ab8dd5b8399203daae2ed446232e4fe9bd961394c6300e5138e3cfd285e6e4e483538cb8b1b357"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    filled-new-array {v0}, [Landroid/content/pm/Signature;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignaturesActual([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
