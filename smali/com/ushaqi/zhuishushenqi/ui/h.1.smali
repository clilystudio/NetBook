.class final Lcom/ushaqi/zhuishushenqi/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/h;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/h;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/h;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/h;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method
