.class final Lcom/ushaqi/zhuishushenqi/reader/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/db;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;Lcom/ushaqi/zhuishushenqi/reader/db;)V
    .locals 0

    .prologue
    .line 208
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/da;->a:Lcom/ushaqi/zhuishushenqi/reader/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/da;->a:Lcom/ushaqi/zhuishushenqi/reader/db;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/db;->a()V

    .line 212
    return-void
.end method
