.class final Lcom/ushaqi/zhuishushenqi/ui/bV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bV;->a:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bV;->a:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method
