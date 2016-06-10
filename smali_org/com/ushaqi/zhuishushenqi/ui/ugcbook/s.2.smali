.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/ax;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/s;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/s;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/s;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Z)Z

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/s;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method
