.class public final Lcom/xiaomi/mistatistic/sdk/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/List;

.field private static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/c;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/c;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/c;->a:Ljava/util/List;

    const-string v1, "file"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/c;->a:Ljava/util/List;

    const-string v1, "ftp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/c;->a:Ljava/util/List;

    const-string v1, "http"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/c;->a:Ljava/util/List;

    const-string v1, "https"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/c;->a:Ljava/util/List;

    const-string v1, "jar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/c;->b:Ljava/util/List;

    const-string v1, "http"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/xiaomi/mistatistic/sdk/a/a;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/o;->a()Lcom/xiaomi/mistatistic/sdk/a/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/a/o;->a(Lcom/xiaomi/mistatistic/sdk/a/a;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/mistatistic/sdk/b/a;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/o;->a()Lcom/xiaomi/mistatistic/sdk/a/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/a/o;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    return-void
.end method
