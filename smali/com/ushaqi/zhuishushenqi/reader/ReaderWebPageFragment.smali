.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;
.super Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v2, "MODE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string v2, "KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v0
.end method

.method public static a(ILjava/lang/String;I)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;-><init>()V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v2, "MODE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v2, "KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "CHAPTER_INDEX"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    return-object v0
.end method

.method public static a(ILjava/lang/String;ILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;-><init>()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v2, "MODE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v2, "KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "CHAPTER_INDEX"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v2, "CHAPTER_URL"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;-><init>()V

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v2, "MODE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string v2, "SG_MD"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "KEY"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "SG_CMD"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v2, "CHAPTER_URL"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v2, "SG_CHAPTER"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->a:I

    .line 97
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    .line 99
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->a:I

    packed-switch v1, :pswitch_data_0

    .line 122
    :pswitch_0
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 101
    :pswitch_1
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_3
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CHAPTER_INDEX"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 106
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "CHAPTER_URL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_4
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SG_MD"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SG_CMD"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "CHAPTER_URL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "SG_CHAPTER"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-static {v1, v0, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_5
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CHAPTER_INDEX"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 116
    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_6
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CHAPTER_INDEX"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 119
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "CHAPTER_URL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
