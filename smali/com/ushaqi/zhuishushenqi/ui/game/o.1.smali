.class final Lcom/ushaqi/zhuishushenqi/ui/game/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/game/n;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/n;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/o;->c:Lcom/ushaqi/zhuishushenqi/ui/game/n;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/o;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/game/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/o;->c:Lcom/ushaqi/zhuishushenqi/ui/game/n;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/o;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/o;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Landroid/view/View;Ljava/lang/String;)V

    .line 448
    return-void
.end method
