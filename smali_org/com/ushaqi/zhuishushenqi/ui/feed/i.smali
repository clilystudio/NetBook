.class final Lcom/ushaqi/zhuishushenqi/ui/feed/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/AlertDialog;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;Landroid/app/AlertDialog;II)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/i;->d:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/i;->a:Landroid/app/AlertDialog;

    iput p3, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/i;->b:I

    iput p4, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/i;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/i;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 109
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/i;->b:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/i;->c:I

    if-eq v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/i;->d:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/i;->b:I

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;I)V

    .line 112
    :cond_0
    return-void
.end method
