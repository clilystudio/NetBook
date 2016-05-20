.class public Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/ab;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/ab;-><init>(Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ab;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 27
    return-void
.end method
