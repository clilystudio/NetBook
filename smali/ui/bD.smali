.class final Lcom/ushaqi/zhuishushenqi/ui/bD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/ax;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;)V
    .locals 0

    .prologue
    .line 144
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/bD;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bD;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method
