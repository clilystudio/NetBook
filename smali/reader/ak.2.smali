.class final Lcom/ushaqi/zhuishushenqi/reader/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/update/a;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 660
    sparse-switch p1, :sswitch_data_0

    .line 742
    :goto_0
    return-void

    .line 663
    :sswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    move-result-object v3

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setReadOptionEnable(Z)V

    .line 664
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->a()V

    goto :goto_0

    :cond_0
    move v0, v2

    .line 663
    goto :goto_1

    .line 668
    :sswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    move-result-object v0

    .line 1255
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->x(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    goto :goto_0

    .line 673
    :sswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    move-result-object v0

    .line 2255
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->onBackPressed()V

    goto :goto_0

    .line 678
    :sswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    move-result-object v0

    .line 3255
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->y(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    goto :goto_0

    .line 683
    :sswitch_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    move-result-object v0

    .line 4255
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->z(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 685
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->f(Z)V

    .line 686
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    .line 4369
    const-string v1, "reader_activity_topic"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :sswitch_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    move-result-object v0

    .line 5255
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i()V

    goto :goto_0

    .line 695
    :sswitch_6
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    move-result-object v0

    .line 6255
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    move-result-object v0

    const v1, 0x7f0c03e4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 697
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Landroid/view/View;)V

    goto/16 :goto_0

    .line 700
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Landroid/view/View;)V

    goto/16 :goto_0

    .line 705
    :sswitch_7
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    move-result-object v0

    .line 7255
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z

    .line 707
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->B(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    goto/16 :goto_0

    .line 711
    :sswitch_8
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    move-result-object v0

    .line 8255
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->C(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    goto/16 :goto_0

    .line 716
    :sswitch_9
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->checkServiceInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 717
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->f(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 718
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    .line 719
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    move-result-object v0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setReadMode(I)V

    .line 720
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->d()[Ljava/lang/Object;

    move-result-object v3

    .line 721
    if-eqz v3, :cond_2

    .line 722
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    aget-object v0, v3, v2

    check-cast v0, [Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 723
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    aget-object v0, v3, v1

    check-cast v0, Ljava/util/LinkedList;

    invoke-static {v4, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 724
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)V

    .line 725
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 726
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const-string v2, "tts_start_speaking"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->D(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const-string v2, "tts_start_speaking_message"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 728
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->J(Landroid/content/Context;)V

    .line 729
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->E(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    goto/16 :goto_0

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const-string v1, "\u83b7\u53d6\u7ae0\u8282\u5185\u5bb9\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 734
    :cond_3
    sget-object v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, ""

    sget-object v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 735
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->F(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    goto/16 :goto_0

    .line 737
    :cond_5
    sget-object v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ak;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const-string v2, "\u8ffd\u4e66\u795e\u5668\u6717\u8bfb\u63d2\u4ef6"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 660
    :sswitch_data_0
    .sparse-switch
        0x7f0c03e3 -> :sswitch_9
        0x7f0c03e4 -> :sswitch_6
        0x7f0c03e5 -> :sswitch_4
        0x7f0c03e6 -> :sswitch_5
        0x7f0c03f9 -> :sswitch_2
        0x7f0c0400 -> :sswitch_7
        0x7f0c0402 -> :sswitch_0
        0x7f0c0403 -> :sswitch_8
        0x7f0c0404 -> :sswitch_1
        0x7f0c0405 -> :sswitch_3
    .end sparse-switch
.end method
