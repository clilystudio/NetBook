.class public Lcom/activeandroid/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SQL_PARSER_DELIMITED:Ljava/lang/String; = "delimited"

.field public static final SQL_PARSER_LEGACY:Ljava/lang/String; = "legacy"


# instance fields
.field private mCacheSize:I

.field private mContext:Landroid/content/Context;

.field private mDatabaseName:Ljava/lang/String;

.field private mDatabaseVersion:I

.field private mModelClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSqlParser:Ljava/lang/String;

.field private mTypeSerializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/serializer/TypeSerializer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/activeandroid/Configuration;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/activeandroid/Configuration$1;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/activeandroid/Configuration;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Lcom/activeandroid/Configuration;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/activeandroid/Configuration;->mCacheSize:I

    return p1
.end method

.method static synthetic access$202(Lcom/activeandroid/Configuration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/activeandroid/Configuration;->mDatabaseName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/activeandroid/Configuration;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/activeandroid/Configuration;->mDatabaseVersion:I

    return p1
.end method

.method static synthetic access$402(Lcom/activeandroid/Configuration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/activeandroid/Configuration;->mSqlParser:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/activeandroid/Configuration;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/activeandroid/Configuration;->mModelClasses:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/activeandroid/Configuration;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/activeandroid/Configuration;->mTypeSerializers:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getCacheSize()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/activeandroid/Configuration;->mCacheSize:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/activeandroid/Configuration;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/activeandroid/Configuration;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseVersion()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/activeandroid/Configuration;->mDatabaseVersion:I

    return v0
.end method

.method public getModelClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/activeandroid/Configuration;->mModelClasses:Ljava/util/List;

    return-object v0
.end method

.method public getSqlParser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/activeandroid/Configuration;->mSqlParser:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeSerializers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/serializer/TypeSerializer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/activeandroid/Configuration;->mTypeSerializers:Ljava/util/List;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/activeandroid/Configuration;->mModelClasses:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/activeandroid/Configuration;->mModelClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
