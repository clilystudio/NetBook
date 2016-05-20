.class final Lcom/ushaqi/zhuishushenqi/ui/feed/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedIntroActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedIntroActivity;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/d;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/d;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedIntroActivity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/d;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedIntroActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedIntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/d;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedIntroActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedIntroActivity;->finish()V

    .line 45
    return-void
.end method
