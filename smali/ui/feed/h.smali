.class final Lcom/ushaqi/zhuishushenqi/ui/feed/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/h;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/h;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/h;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;I)V

    .line 63
    return-void
.end method
