.class public final Lcom/ushaqi/zhuishushenqi/db/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;

.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;

.field private static final q:[Ljava/lang/String;

.field private static final r:[Ljava/lang/String;

.field private static final s:[Ljava/lang/String;

.field private static final t:[Ljava/lang/String;

.field private static final u:[Ljava/lang/String;

.field private static final v:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN localModifiedDate long;"

    aput-object v1, v0, v2

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN account TEXT;"

    aput-object v1, v0, v3

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN deleted INTEGER;"

    aput-object v1, v0, v4

    const-string v1, "UPDATE BookReadRecords SET deleted=0;"

    aput-object v1, v0, v5

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->a:[Ljava/lang/String;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN chapterCountAtFeed INTEGER;"

    aput-object v1, v0, v2

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN chapterCountAtFeed INTEGER;"

    aput-object v1, v0, v3

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN feeding INTEGER;"

    aput-object v1, v0, v4

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN feedFat INTEGER;"

    aput-object v1, v0, v5

    const-string v1, "UPDATE BookReadRecords SET feeding=0;"

    aput-object v1, v0, v6

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->b:[Ljava/lang/String;

    .line 28
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ALTER TABLE MixTocRecords ADD COLUMN prioritySource TEXT;"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->c:[Ljava/lang/String;

    .line 30
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN author TEXT;"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->d:[Ljava/lang/String;

    .line 32
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN referenceSource TEXT;"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->e:[Ljava/lang/String;

    .line 34
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ALTER TABLE BookTopicEnterRecord ADD COLUMN visit_count INTEGER;"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->f:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN readMode INTEGER;"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->g:[Ljava/lang/String;

    .line 38
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ALTER TABLE SourceRecord ADD COLUMN sogouMd TEXT;"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->h:[Ljava/lang/String;

    .line 40
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ALTER TABLE BookDlRecord ADD COLUMN progress INTEGER;"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->i:[Ljava/lang/String;

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN downloadedSource TEXT;"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->j:[Ljava/lang/String;

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN tocIndex INTEGER;"

    aput-object v1, v0, v2

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN chapterTitle TEXT;"

    aput-object v1, v0, v3

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->k:[Ljava/lang/String;

    .line 47
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ALTER TABLE SplashRecord ADD COLUMN isShow INTEGER;"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->l:[Ljava/lang/String;

    .line 49
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN readTime INTEGER;"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->m:[Ljava/lang/String;

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "CREATE TABLE IF NOT EXISTS FollowRecord (id integer primary key AutoIncrement,userId varchar(20),followedId varchar(20));"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->n:[Ljava/lang/String;

    .line 53
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "CREATE TABLE IF NOT EXISTS RetweenRecord (id integer primary key AutoIncrement,userId varchar(20),tweetId varchar(20));"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->o:[Ljava/lang/String;

    .line 55
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "CREATE TABLE IF NOT EXISTS TweetCache (id integer primary key AutoIncrement,userId varchar(20),type int ,content varchar(200));"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->p:[Ljava/lang/String;

    .line 58
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "CREATE TABLE IF NOT EXISTS AudioRecord (id integer primary key AutoIncrement,userId varchar(20),bookId varchar(20),name varchar(20),desc varchar(20),imgUrl varchar(20),track int,lastUpdate long,updateReaded boolean);"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->q:[Ljava/lang/String;

    .line 67
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN lastActionTime long;"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->r:[Ljava/lang/String;

    .line 71
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN lastActionTime long;"

    aput-object v1, v0, v2

    const-string v1, "ALTER TABLE AudioRecord ADD COLUMN top boolean;"

    aput-object v1, v0, v3

    const-string v1, "ALTER TABLE AudioRecord ADD COLUMN lastRead long;"

    aput-object v1, v0, v4

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->s:[Ljava/lang/String;

    .line 77
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN recommended boolean;"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->t:[Ljava/lang/String;

    .line 81
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ALTER TABLE BookReadRecords ADD COLUMN have_cp INTEGER default 0;"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->u:[Ljava/lang/String;

    .line 85
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "CREATE TABLE IF NOT EXISTS BookSyncRecord (id integer primary key AutoIncrement,userId varchar(20),bookId varchar(20), type int,updated long);"

    aput-object v1, v0, v2

    sput-object v0, Lcom/ushaqi/zhuishushenqi/db/b;->v:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x9

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->a:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0xd

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->b:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0xe

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->c:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0xf

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->d:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x10

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->e:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x11

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->f:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x12

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->g:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x15

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->h:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x16

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->i:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x17

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->j:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x18

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->k:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x22

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->l:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x23

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->m:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x24

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->n:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x25

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->o:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x26

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->p:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x27

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->q:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x28

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->r:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x2a

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->s:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x2b

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->t:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x2c

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->v:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/c;

    const/16 v2, 0x2d

    sget-object v3, Lcom/ushaqi/zhuishushenqi/db/b;->u:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/c;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-object v0
.end method
