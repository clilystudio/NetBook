.class final Lcom/activeandroid/ModelInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mTableInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Lcom/activeandroid/TableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeSerializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/activeandroid/serializer/TypeSerializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/activeandroid/Configuration;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/ModelInfo;->mTableInfos:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/activeandroid/ModelInfo$1;

    invoke-direct {v0, p0}, Lcom/activeandroid/ModelInfo$1;-><init>(Lcom/activeandroid/ModelInfo;)V

    iput-object v0, p0, Lcom/activeandroid/ModelInfo;->mTypeSerializers:Ljava/util/Map;

    .line 61
    invoke-direct {p0, p1}, Lcom/activeandroid/ModelInfo;->loadModelFromMetaData(Lcom/activeandroid/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :try_start_0
    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/activeandroid/ModelInfo;->scanForModel(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    const-string v0, "ModelInfo loaded."

    invoke-static {v0}, Lcom/activeandroid/util/Log;->i(Ljava/lang/String;)I

    .line 71
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v1, "Couldn\'t open source path."

    invoke-static {v1, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadModelFromMetaData(Lcom/activeandroid/Configuration;)Z
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getModelClasses()Ljava/util/List;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 101
    iget-object v2, p0, Lcom/activeandroid/ModelInfo;->mTableInfos:Ljava/util/Map;

    new-instance v3, Lcom/activeandroid/TableInfo;

    invoke-direct {v3, v0}, Lcom/activeandroid/TableInfo;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getTypeSerializers()Ljava/util/List;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 109
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/serializer/TypeSerializer;

    .line 110
    iget-object v2, p0, Lcom/activeandroid/ModelInfo;->mTypeSerializers:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/activeandroid/serializer/TypeSerializer;->getDeserializedType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v2, "Couldn\'t instantiate TypeSerializer."

    invoke-static {v2, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 115
    :catch_1
    move-exception v0

    .line 116
    const-string v2, "IllegalAccessException"

    invoke-static {v2, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 121
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private scanForModel(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    if-eqz v0, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    new-instance v3, Ldalvik/system/DexFile;

    invoke-direct {v3, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 133
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 140
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 142
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v4, "bin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "classes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v3, v1, v0}, Lcom/activeandroid/ModelInfo;->scanForModelClasses(Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_2

    .line 154
    :cond_4
    return-void
.end method

.method private scanForModelClasses(Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    .line 159
    invoke-direct {p0, v1, p2, p3}, Lcom/activeandroid/ModelInfo;->scanForModelClasses(Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 179
    if-gez v1, :cond_2

    .line 211
    :cond_1
    :goto_1
    return-void

    .line 183
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_3
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/activeandroid/util/ReflectionUtils;->isModel(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    iget-object v1, p0, Lcom/activeandroid/ModelInfo;->mTableInfos:Ljava/util/Map;

    new-instance v2, Lcom/activeandroid/TableInfo;

    invoke-direct {v2, v0}, Lcom/activeandroid/TableInfo;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string v1, "Couldn\'t create class."

    invoke-static {v1, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 193
    :cond_4
    :try_start_1
    invoke-static {v0}, Lcom/activeandroid/util/ReflectionUtils;->isTypeSerializer(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/serializer/TypeSerializer;

    .line 195
    iget-object v1, p0, Lcom/activeandroid/ModelInfo;->mTypeSerializers:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/activeandroid/serializer/TypeSerializer;->getDeserializedType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 201
    :catch_1
    move-exception v0

    .line 202
    const-string v1, "Couldn\'t instantiate TypeSerializer."

    invoke-static {v1, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 204
    :catch_2
    move-exception v0

    .line 205
    const-string v1, "IllegalAccessException"

    invoke-static {v1, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 207
    :catch_3
    move-exception v0

    .line 208
    const-string v1, "IllegalAccessException"

    invoke-static {v1, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public final getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/TableInfo;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/activeandroid/ModelInfo;->mTableInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/TableInfo;

    return-object v0
.end method

.method public final getTableInfos()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/activeandroid/TableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/activeandroid/ModelInfo;->mTableInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeSerializer(Ljava/lang/Class;)Lcom/activeandroid/serializer/TypeSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/activeandroid/serializer/TypeSerializer;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/activeandroid/ModelInfo;->mTypeSerializers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/serializer/TypeSerializer;

    return-object v0
.end method
