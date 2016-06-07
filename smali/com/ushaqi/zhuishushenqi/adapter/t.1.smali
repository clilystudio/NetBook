.class public final Lcom/ushaqi/zhuishushenqi/adapter/t;
.super Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;-><init>(Landroid/view/LayoutInflater;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/adapter/t;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
