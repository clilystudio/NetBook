.class public final enum Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Bookshelf:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

.field public static final enum Notification:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

.field public static final enum Reader:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

.field public static final enum Splash:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

.field private static final synthetic a:[Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;


# instance fields
.field private mPre:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    const-string v1, "Splash"

    const-string v2, "splash"

    invoke-direct {v0, v1, v3, v2}, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Splash:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    .line 24
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    const-string v1, "Bookshelf"

    const-string v2, "bookshelf"

    invoke-direct {v0, v1, v4, v2}, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Bookshelf:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    .line 25
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    const-string v1, "Reader"

    const-string v2, "reader_menu"

    invoke-direct {v0, v1, v5, v2}, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Reader:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    .line 26
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    const-string v1, "Notification"

    const-string v2, "notification"

    invoke-direct {v0, v1, v6, v2}, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Notification:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Splash:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Bookshelf:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Reader:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Notification:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->a:[Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new_game_ad_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->mPre:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    return-object v0
.end method

.method public static values()[Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->a:[Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    invoke-virtual {v0}, [Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    return-object v0
.end method


# virtual methods
.method public final build()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->mPre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->mPre:Ljava/lang/String;

    return-object v0
.end method
