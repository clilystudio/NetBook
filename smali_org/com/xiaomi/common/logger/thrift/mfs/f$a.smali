.class public final enum Lcom/xiaomi/common/logger/thrift/mfs/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/common/logger/thrift/mfs/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

.field public static final enum b:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

.field public static final enum c:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

.field public static final enum d:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

.field public static final enum e:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

.field public static final enum f:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

.field public static final enum g:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/common/logger/thrift/mfs/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic k:[Lcom/xiaomi/common/logger/thrift/mfs/f$a;


# instance fields
.field private final i:S

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    const-string v1, "CATEGORY"

    const/4 v2, 0x0

    const-string v3, "category"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/common/logger/thrift/mfs/f$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->a:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    const-string v1, "UUID"

    const-string v2, "uuid"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/common/logger/thrift/mfs/f$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->b:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    const-string v1, "VERSION"

    const-string v2, "version"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/common/logger/thrift/mfs/f$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->c:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    const-string v1, "NETWORK"

    const-string v2, "network"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/common/logger/thrift/mfs/f$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->d:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    const-string v1, "RID"

    const-string v2, "rid"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaomi/common/logger/thrift/mfs/f$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->e:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    const-string v1, "LOCATION"

    const/4 v2, 0x6

    const-string v3, "location"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/common/logger/thrift/mfs/f$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->f:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    const-string v1, "HOST_INFO"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "host_info"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/common/logger/thrift/mfs/f$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->g:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->a:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->b:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->c:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->d:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->e:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->f:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->g:Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->k:[Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->h:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    sget-object v2, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->i:S

    iput-object p4, p0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/f$a;
    .locals 1

    const-class v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/common/logger/thrift/mfs/f$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->k:[Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    invoke-virtual {v0}, [Lcom/xiaomi/common/logger/thrift/mfs/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/common/logger/thrift/mfs/f$a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/f$a;->j:Ljava/lang/String;

    return-object v0
.end method
