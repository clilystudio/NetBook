.class final Lcom/ushaqi/zhuishushenqi/ui/game/m;
.super Lcom/ushaqi/zhuishushenqi/util/S;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/S",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/Root;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/m;->c:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/S;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;B)V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/m;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/ushaqi/zhuishushenqi/api/ApiService;[Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 2

    .prologue
    .line 540
    const/4 v0, 0x0

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/m;->a:Ljava/lang/String;

    .line 541
    const/4 v0, 0x1

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/m;->b:Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/m;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->F(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/ushaqi/zhuishushenqi/model/Root;)V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/m;->c:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    const-string v1, "\u5df2\u540c\u611f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/m;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/m;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method protected final b(Lcom/ushaqi/zhuishushenqi/model/Root;)V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/m;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/m;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method
