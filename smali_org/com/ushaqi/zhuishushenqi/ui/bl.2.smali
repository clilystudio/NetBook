.class final Lcom/ushaqi/zhuishushenqi/ui/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bl;->a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bl;->a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d..."

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/A;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bl;->a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/A;-><init>(Landroid/app/Activity;)V

    .line 117
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/A;->a()V

    .line 118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bl;->a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;

    .line 1478
    const-string v1, "mhd_download_click"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    return-void
.end method
