.class final Lcom/ushaqi/zhuishushenqi/ui/user/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/W;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/W;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/X;->a:Lcom/ushaqi/zhuishushenqi/ui/user/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/X;->a:Lcom/ushaqi/zhuishushenqi/ui/user/W;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/W;->b:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/X;->a:Lcom/ushaqi/zhuishushenqi/ui/user/W;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/ui/user/W;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->smoothScrollToPositionFromTop(II)V

    .line 366
    return-void
.end method
